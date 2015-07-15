var renderCar = function() {
    var rendered = document.createElement('canvas');
    rendered.width = 100;
    rendered.height = 70;
    
    var renderedCtx = rendered.getContext('2d');
    renderedCtx.fillStyle = '#E5E5E5';
    renderedCtx.fillRect(5, 30, 90, 30); // Side
    renderedCtx.fillRect(30, 5, 40, 30); // Side
    
    renderedCtx.fillStyle = '#000';
    
    // Wheel 1
    renderedCtx.beginPath();
    renderedCtx.arc(30, 60, 10, 0, Math.PI*2, true); 
    renderedCtx.closePath();
    renderedCtx.fill();
    
    // Wheel 2
    renderedCtx.beginPath();
    renderedCtx.arc(75, 60, 10, 0, Math.PI*2, true); 
    renderedCtx.closePath();
    renderedCtx.fill();
    return rendered;
}

window.onload = function() {
  init();
};


var ctx;
var car;

function init(){
  car = renderCar(); //Pre car load
  ctx = document.getElementById("mycanvas").getContext("2d");
  document.body.onkeypress = function(e) {
    processInput(e.keyCode || e.which);
  }
}

// KEYS - Constants for keys
var A = 97
var D = 100
var S = 115
var W = 119

/*
  Controling keypress
*/
var lastKeyPressed;
var processInput = function(keyCode) {
    lastKeyPressed = keyCode;
};

/*
  Simple logic for move the car.
*/

var calcSpeed = function(delta, pixelsPerSec) {
    return ((pixelsPerSec * delta) / 1000);
};

var x = 0, y = 0;
var updateGame = function(delta) {
    if (lastKeyPressed == A) {
        x -= calcSpeed(delta, 100);
    } else if (lastKeyPressed == D) {
        x += calcSpeed(delta, 100);
    } else if (lastKeyPressed == W) {
        y -= calcSpeed(delta, 100);
    } else if (lastKeyPressed == S) {
        y += calcSpeed(delta, 100);
    }
    lastKeyPressed = null;
};

var render = function() {
    // Clean canvas
    ctx.clearRect(0, 0, 300, 300);
    // Draw canvas
    ctx.drawImage(car, x, y);
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