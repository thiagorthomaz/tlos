var ctx;
var player;
var command_mapper = new CommandMapper();
var gps = new GPS();

window.onload = function() {
  init();
};

function init(){

  player = new Player();  

  ctx = document.getElementById("mycanvas").getContext("2d");
  document.body.onkeypress = function(e) {
    processInput(e.keyCode || e.which);
  };

}

/*
  Controling keypress
*/

var processInput = function(keyCode) {
  command_mapper.processInput(keyCode);
};

/*
  Simple logic for move the car.
*/

var calcSpeed = function(delta, pixelsPerSec) {
    return ((pixelsPerSec * delta) / 1000);
};

var x = 0, y = 0;
var updateGame = function(delta) {

  if (command_mapper.lastKeyPress === command_mapper.leftKey) {
      x -= calcSpeed(delta, 100);
      gps.setX(x);
  } else if (command_mapper.lastKeyPress === command_mapper.rightKey) {
      x += calcSpeed(delta, 100);
      gps.setX(x);
  } else if (command_mapper.lastKeyPress === command_mapper.upKey) {
      y -= calcSpeed(delta, 100);
      gps.setY(y);
  } else if (command_mapper.lastKeyPress === command_mapper.downKey) {
      y += calcSpeed(delta, 100);
      gps.setY(y);
      console.log(gps);
  } else if (command_mapper.lastKeyPress === command_mapper.stopKey) {
      command_mapper.lastKeyPress = null;
  }

};

var render = function() {
    // Clean canvas
    ctx.clearRect(0, 0, 800, 800);
    // Draw canvas
    ctx.drawImage(player.render(), gps.getX(), gps.getY());
};

var lastUpdate;
var loop = function() {

    var t = new Date().getTime();
    var delta = t - lastUpdate;

	updateGame(delta);
    render();
    
    lastUpdate = new Date().getTime();
    window.requestAnimationFrame(loop);

};
lastUpdate = new Date().getTime();
window.requestAnimationFrame(loop);