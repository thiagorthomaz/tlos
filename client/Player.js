
function Player(ctx){
  this.id;
  this.nickname;
  this.level;
  var location = null;

  this.currentLocation = function(){
    if (location === null){
      return new Location();
    }
    return location;
  };
  
  this.updateLocation = function(location, x, y, z){
    location.x = x;
    location.y = y;
    location.z = z;
  }
  
  this.render = function( canvas ){
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
  
}