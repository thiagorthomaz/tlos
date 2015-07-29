
function Player(ctx) {
  this.id;
  this.nickname;
  this.level;
  this.speed = 10;

  this.draw = function () {
    this.context.drawImage(this.render(), this.x, this.y);
  };

  this.move = function () {
    
    // Determine if the action is move action
    if (KEY_STATUS.left || KEY_STATUS.right ||
            KEY_STATUS.down || KEY_STATUS.up) {            
      // The ship moved, so erase it's current image so it can
      // be redrawn in it's new location
      this.context.clearRect(this.x, this.y, this.width, this.height);
      // Update x and y according to the direction to move and
      // redraw the ship. Change the else if's to if statements
      // to have diagonal movement.
      if (KEY_STATUS.left) {
        this.x -= this.speed
        if (this.x <= 0) // Keep player within the screen
          this.x = 0;
      } else if (KEY_STATUS.right) {
        this.x += this.speed
        if (this.x >= this.canvasWidth - this.width)
          this.x = this.canvasWidth - this.width;
      } else if (KEY_STATUS.up) {
        this.y -= this.speed
        if (this.y <= this.canvasHeight / 4 * 3)
          this.y = this.canvasHeight / 4 * 3;
      } else if (KEY_STATUS.down) {
        this.y += this.speed
        if (this.y >= this.canvasHeight - this.height)
          this.y = this.canvasHeight - this.height;
      }
      // Finish by redrawing the ship
      this.draw();
    }
    
  };

  this.render = function (canvas) {
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
    renderedCtx.arc(30, 60, 10, 0, Math.PI * 2, true);
    renderedCtx.closePath();
    renderedCtx.fill();

    // Wheel 2
    renderedCtx.beginPath();
    renderedCtx.arc(75, 60, 10, 0, Math.PI * 2, true);
    renderedCtx.closePath();
    renderedCtx.fill();
    return rendered;

  };

}

Player.prototype = new Drawable();