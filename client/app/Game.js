
/*******************
* Image load variables
*******************/
var load_count = 0;
var total_images = 0;
var load_count = 0;
var total_images = 0;

var CityInfo = {
  tile : {
    width : 128,
    heigh : 64
  },
  canvas : null,
  current_tile : null,
  buildings : new Array(),
  all_buildings : new Array()
};

var Status = {
  city_loaded : false,
  mouse_clicked : false,
  images_preloaded : false,
  display_images : false
  
};

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
    
    init();
    
    function init() {

      $scope.$on('buildings_list', function(event, buildings) {
        $scope.$parent.buildings_list = buildings;
        CityInfo.all_buildings = prepareBuildings(buildings);
        
      });

      $scope.$on('city_buildings', function(event, city_buildings) {
        CityInfo.buildings = city_buildings;
      });

      buildings_canvas.addEventListener("click", function(e){ mouseListener(e); }, false);
      
      loadGrid();
      loadTerrain();

      animate();//main loop
    }

    function animate() {
      
      requestAnimFrame( animate );
      draw();
      Status.mouse_clicked = false;

    }

    function draw() {
      if(!$scope.$$phase){
        $scope.$apply(function() {
          
          $scope.autoUpdateTimer++;
          
          if (Status.images_preloaded && !Status.display_images){
            drawBuildings();
          }
          
          if (Status.mouse_clicked) {
            $scope.$parent.selected_building = selectBuilding();
            $scope.$parent.selected_tile = CityInfo.current_tile;
          }
          

        });
      }
    }
    
    function drawBuildings() {
      var build_context = buildings_canvas.getContext("2d");
      drawBuildingsOnCanvas(build_context, CityInfo.buildings, CityInfo.all_buildings);
      Status.display_images = true;
    }

    function selectBuilding() {

      for (var i in CityInfo.buildings){
        var build = CityInfo.buildings[i];

        if (build.x == CityInfo.current_tile.x && build.y == CityInfo.current_tile.y) {
          return  selectBuildingById(build.id_building);
        }
      }

      return { 
        id : null,
        title : null, 
        build_time :null, 
        destruction_time : null, 
        cost_wood:null, 
        cost_stone:null,
        cost_iron:null, 
        image : null
      };

    }
    
    function selectBuildingById(id){
      var current_building = all_buildings[id];
      return current_building;
    }


}]);


function loadGrid() {
  CityInfo.canvas = document.getElementById("city");
  var ctx = CityInfo.canvas.getContext("2d");
  ctx.beginPath();
  for(var i = 0; i<21; i++) {
    
    for(var j = 0; j<21; j++) {
      ctx.rect( i*CityInfo.tile.width, j*CityInfo.tile.heigh, CityInfo.tile.width, CityInfo.tile.heigh);
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

function drawBuildingsOnCanvas(build_context, city_buildings, list_buildings) {
  for (var i in city_buildings){
    var building = city_buildings[i];
    var image = list_buildings[building.id_building];
    var pixel_pos = tileToPixel(building.x, building.y);
    build_context.drawImage(image, pixel_pos.x, pixel_pos.y);
  }
}

function prepareBuildings(buildings){

  for (var type_build in buildings){
    
    var load_total = buildings[type_build].length;

    for (var i = 0; i < load_total; i ++){
      total_images++;
      var current_building = buildings[type_build][i];
      var image = loadBuildingImages(current_building);
      all_buildings[current_building.id] = current_building;
      CityInfo.all_buildings[current_building.id] = image;
    }
    
  }
  
  return CityInfo.all_buildings;

}

function loadBuildingImages(current_building){
  var image = new Image();
  image.onload = function(){
    load_count++;
    if (load_count == total_images){
      Status.images_preloaded = true;
    }
  };
  image.src = current_building.image;
  return image;
}

function mouseListener(e) {
  var mouse_pos = getMousePos(CityInfo.canvas, e);
  var pt = pixeltoTile(mouse_pos.x, mouse_pos.y);
  CityInfo.current_tile = pt;
  Status.mouse_clicked = true;
  return pt;
}

function pixeltoTile(x, y) {
  var tile_pos = {};
  tile_pos.x = Math.floor(x / CityInfo.tile.width);
  tile_pos.y = Math.floor(y / CityInfo.tile.heigh);
  return tile_pos;
}

function tileToPixel(x, y) {

  var pixel_pos = {};
  pixel_pos.x = Math.floor(x * CityInfo.tile.width);
  pixel_pos.y = Math.floor(y * CityInfo.tile.heigh);
  
  return pixel_pos;
}

function getMousePos(canvas, evt) {
    var rect = canvas.getBoundingClientRect();
    return {
      x: evt.clientX - rect.left,
      y: evt.clientY - rect.top
    };
}