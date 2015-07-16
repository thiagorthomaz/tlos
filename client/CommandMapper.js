

function CommandMapper(){

  this.upKey = 119; //W
  this.downKey = 115; //S
  this.leftKey = 97; //A
  this.rightKey = 100; //D
  this.stopKey = 32; //Space
  this.lastKeyPress = null;
  var self = this;
  
  this.processInput = function( keyCode ){
    self.lastKeyPress = keyCode;
  };

}