/// move with keyboard

up_pressed = keyboard_check(up_key);
down_pressed = keyboard_check(down_key);
left_pressed = keyboard_check(left_key);
right_pressed = keyboard_check(right_key);
shoot_pressed = keyboard_check(shoot_key);

if ( up_pressed ) {
  direction = 90;
  speed = 4;
}

if ( down_pressed ) {
  direction = 270;
  speed = 4;
}

if ( right_pressed ) {
  direction = 0;
  speed = 4;
}

if ( left_pressed ) {
  direction = 180;
  speed = 4;
}

if ( left_pressed and up_pressed ) {
  direction = 135;
  speed = 4;
}
  
if (down_pressed and right_pressed ) {
  direction = 315;
  speed = 4;
}
  
if ( up_pressed and right_pressed ) {
  direction = 45;
  speed = 4;
}
  
if ( left_pressed and down_pressed ) {
  direction = 225;
  speed = 4;
}

if ( shoot_pressed and reloaded ) {
  var bullet = instance_create(x,y,myBullet);
  bullet.speed = 10;
  bullet.direction = direction;
  alarm[0] = 15;
  bullet.image_angle = direction;
  reloaded = false;
}
  
image_angle = direction;
