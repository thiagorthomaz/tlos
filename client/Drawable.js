/**
 * Creates the Drawable object which will be the base class for
 * all drawable objects in the game. Sets up default variables
 * that all child objects will inherit, as well as the default
 * functions.
 */
function Drawable() {
	this.init = function(x, y, width, height) {
      // Default variables
      this.x = x;
      this.y = y;
	};
	this.width = 0;
	this.height = 0;
	// Define abstract function to be implemented in child objects
	this.draw = function() {
	};
}