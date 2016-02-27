var tile_with = 128;
var tile_heigh = 64;
var c = null;
var current_tile = null;

images_preloaded = false;
load_count = 0;
total_images = 0;
  
/*******************
* Image load variables
*******************/
var load_count = 0;
var total_images = 0;

var images_preloaded = false;
display_images = false;
var loaded_images;
/**
* List of all possible buildings to construct.
* The index is the building ID
* @type buildings
*/
var all_buildings = new Array();
    
window.requestAnimFrame = (function(){
  return  window.requestAnimationFrame       ||
    window.webkitRequestAnimationFrame ||
    window.mozRequestAnimationFrame    ||
    window.oRequestAnimationFrame      ||
    window.msRequestAnimationFrame     ||
    function(/* function */ callback, /* DOMElement */ element){
      window.setTimeout(callback, 1000/60 );
    };
})();
  
app.controller('gameCtrl', ['$scope',
  function($scope){
    
    $scope.autoUpdateTimer = 30;

    /**
     * Get canvas for buildings.
     * @type Element
     */
    var buildings_canvas = document.getElementById("buildings");
    var build_context = buildings_canvas.getContext("2d");

    /**
     * List of city buildings.
     * @type city_buildings
     */
    var loaded_city_buildings;
    
    init();
    
    function init() {
      $scope.$on('buildings', function(event, buildings) {
        loaded_images = prepareBuildings(buildings);
        $scope.$parent.buildings = buildings;
        console.log($scope);
      });
      $scope.$on('city_buildings', function(event, city_buildings) {
        loaded_city_buildings = city_buildings;
      });

      buildings_canvas.addEventListener("click", function(e){ mouseListener(e); }, false);
      
      loadGrid();
      loadTerrain();

      animate();//main loop
    }

    function animate() {
      
      requestAnimFrame( animate );
      draw();

    }

    function draw() {
      if(!$scope.$$phase){
        $scope.$apply(function() {
          
          $scope.autoUpdateTimer++;
          
          if (images_preloaded && !display_images){
            drawBuildings();
            //console.log($scope);
          }
          
          $scope.$parent.selected_build = selectBuilding();

        });
      }
    }
    
    function drawBuildings() {
      drawBuildingsOnCanvas(build_context, loaded_city_buildings, loaded_images);
      display_images = true;
    }

    function selectBuilding(){
      if ( (current_tile != null)) {

        for (var i in loaded_city_buildings){
          var build = loaded_city_buildings[i];
          
          if (build.x == current_tile.x && build.y == current_tile.y) {
            return  selectBuildingById(build.id_building);
          }
        }
        
        current_tile = null;

      }
      

    }
    
    function selectBuildingById(id){
      var current_building = all_buildings[id];
      return current_building;
    }


  }]);


function loadGrid() {
  
  c = document.getElementById("city");
  var ctx = c.getContext("2d");
  
  ctx.beginPath();

  for(var i = 0; i<21; i++) {

    for(var j = 0; j<21; j++) {

      ctx.rect( i*tile_with, j*tile_heigh, tile_with, tile_heigh);
      ctx.fillStyle = 'transparent';
      ctx.fill();
      ctx.lineWidth = 1;
      ctx.strokeStyle = 'black';
      ctx.stroke();
    }
  }      
}

function loadTerrain() {
  
  var ct = document.getElementById("terrain");
  var ctx = ct.getContext("2d");
  
  var imageObj = new Image();
  imageObj.onload = function() {
    ctx.drawImage(imageObj, 0, 0);
  };
  
  imageObj.src = 'http://localhost/tlos/client/images/terreno-1.png';

}

function drawBuildingsOnCanvas(build_context, city_buildings, loaded_images) {
  
  for (var i in city_buildings){
    var building = city_buildings[i];
    var image = loaded_images[building.id_building];
    var pixel_pos = tileToPixel(building.x, building.y);
    build_context.drawImage(image, pixel_pos.x, pixel_pos.y);
  }

}

function prepareBuildings(buildings){
  

  var loaded_images = new Array();

  for (var type_build in buildings){
    
    var load_total = buildings[type_build].length;

    for (var i = 0; i < load_total; i ++){
      total_images++;
      var current_building = buildings[type_build][i];
      var image = loadBuildingImages(current_building);
      all_buildings[current_building.id] = current_building;
      loaded_images[current_building.id] = image;
    }
    
  }
  
  return loaded_images;

}

function loadBuildingImages(current_building){
  var image = new Image();
  image.onload = function(){
    load_count++;
    if (load_count == total_images){
      images_preloaded = true;
    }
  };
  image.src = current_building.image;
  return image;
}

function mouseListener(e){
  
  var mouse_pos = getMousePos(c, e);
  var pt = pixeltoTile(mouse_pos.x, mouse_pos.y);
  current_tile = pt;
  return pt;

}

function pixeltoTile(x, y) {

  var tile_pos = {};
  tile_pos.x = Math.floor(x / tile_with);
  tile_pos.y = Math.floor(y / tile_heigh);
  return tile_pos;
}

function tileToPixel(x, y) {

  var pixel_pos = {};
  pixel_pos.x = Math.floor(x * tile_with);
  pixel_pos.y = Math.floor(y * tile_heigh);
  
  return pixel_pos;
}

function getMousePos(canvas, evt) {
    var rect = canvas.getBoundingClientRect();
    return {
      x: evt.clientX - rect.left,
      y: evt.clientY - rect.top
    };
}