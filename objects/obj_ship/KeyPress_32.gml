audio_play_sound(snd_zap,0,false);
var newBullet = instance_create_layer(x, y, "Instances", obj_bullet);

newBullet.direction = image_angle;
