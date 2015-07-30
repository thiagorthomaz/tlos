
function NPC() {
  this.id;
  this.nickname;
  this.level;
  this.speed = 5;

  this.draw = function () {
    this.context.drawImage(this.render(), this.x, this.y);
  };

  this.move = function () {


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

NPC.prototype = new Drawable();