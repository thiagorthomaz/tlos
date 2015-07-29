function Core() {
  
  /*
   * Gets canvas information and context and sets up all game
   * objects.
   * Returns true if the canvas is supported and false if it
   * is not. This is to stop the animation script from constantly
   * running on older browsers.
   */
  this.init = function () {
    
    // Get the canvas elements
    this.playerCanvas = document.getElementById('player');
    
    // Get the context
    this.playerContext = this.playerCanvas.getContext('2d');
    
    // Initialize objects to contain their context and canvas
    Player.prototype.context = this.playerContext;
    Player.prototype.canvasWidth = this.playerCanvas.width;
    Player.prototype.canvasHeight = this.playerCanvas.height;
    
    //Initialize the Player object
    this.player = new Player();
    //
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