function Core() {
  
  /*
   * Gets canvas information and context and sets up all game
   * objects.
   * Returns true if the canvas is supported and false if it
   * is not. This is to stop the animation script from constantly
   * running on older browsers.
   */
  this.init = function () {
    
    this.playerCanvas = document.getElementById('player');
    this.playerContext = this.playerCanvas.getContext('2d');
    
    Player.prototype.context = this.playerContext;
    Player.prototype.width = this.playerCanvas.width;
    Player.prototype.height = this.playerCanvas.height;
    
    this.player = new Player();
    this.player.init(0, 0);
    this.player.draw();
    this.player.move();
    
    return true;

  };


  // Start the animation loop
  this.start = function () {
    this.player.draw();
    animate();
  };


}

/**
 * The animation loop. Calls the requestAnimationFrame shim to
 * optimize the game loop and draws all game objects. This
 * function must be a global function and cannot be within an
 * object.
 */
function animate() {
	requestAnimFrame( animate );
	core.player.move();
}