
function Player() {
  this.id;
  this.nickname;
  this.level;
  this.speed = 5;

  this.draw = function () {
    this.context.drawImage(this.render(), this.x, this.y);
  };
  console.log(this.width);
  this.move = function () {

    // Determine if the action is move action
    if (KEY_STATUS.left || KEY_STATUS.right ||
            KEY_STATUS.down || KEY_STATUS.up) {

      // The ship moved, so erase it's current image so it can
      // be redrawn in it's new location
      this.context.clearRect(this.x, this.y, 800, 600);
      // Update x and y according to the direction to move and
      // redraw the ship. Change the else if's to if statements
      // to have diagonal movement.
      if (KEY_STATUS.left) {
        if (this.x > 0) {
          this.x -= this.speed
        }
        ;

      } else if (KEY_STATUS.right) {
        if (this.x < (this.canvasWidth - this.width)) {
          this.x += this.speed;
        }
      } else if (KEY_STATUS.up) {

        if (this.y > 0) {
          this.y -= this.speed
        }

      } else if (KEY_STATUS.down) {
        if (this.y < (this.canvasHeight - this.height)) {
          this.y += this.speed
        }
        

      }
      // Finish by redrawing the ship
      this.draw();
    }

  };

  this.render = function (canvas) {
    var rendered = document.createElement('canvas');
    rendered.width = 30;
    rendered.height = 30;
    this.width = rendered.width;
    this.height = rendered.height;

    var renderedCtx = rendered.getContext('2d');

    renderedCtx.beginPath();
    renderedCtx.arc(10, 10, 10, 0, Math.PI * 2, true);
    renderedCtx.closePath();
    renderedCtx.fill();
    return rendered;

  };

}

Player.prototype = new Drawable();