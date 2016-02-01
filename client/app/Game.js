var tile_with = 64;
var tile_heigh = 64;
var c = null;

app.controller('PlayCtrl', ['$scope',
  function($scope){
    loadGrid();
    loadTerrain();
    
  }]);


function loadGrid() {
  
  c = document.getElementById("city");
  c.addEventListener("click", function(e){ pixeltoTile(e); }, false)
  var ctx = c.getContext("2d");
  
  ctx.beginPath();

  for(var i = 0; i<21; i++) {

    for(var j = 0; j<21; j++) {

      ctx.rect(i*tile_with, j*tile_with, (i*tile_with) + tile_with, (j*tile_heigh) + tile_heigh);
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

function pixeltoTile(e) {

  var mouse_pos = getMousePos(c, e);
  var tile_pos = {};
  tile_pos.x = Math.floor(mouse_pos.x / tile_with);
  tile_pos.y = Math.floor(mouse_pos.y / tile_heigh);


  console.log(tile_pos);

}


function getMousePos(canvas, evt) {
    var rect = canvas.getBoundingClientRect();
    return {
      x: evt.clientX - rect.left,
      y: evt.clientY - rect.top
    };
}