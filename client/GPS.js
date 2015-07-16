
function GPS(){

  this.x = 0;
  this.y = 0;
  this.z = 0;
  self = this;

  this.setX = function( x ){
    self.x = x;
  };
  this.getX = function(){
    return self.x;
  };
  this.setY = function( y ){
    self.y = y;
  };
  this.getY = function(){
    return self.y;
  };
  this.setZ = function( z ){
    self.z = z;
  },
  this.getZ = function(){
    return self.z;
  };
  
}
