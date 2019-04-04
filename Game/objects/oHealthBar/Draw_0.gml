// Draw Health Bar 
draw_self();

if !instance_exists(oPlayer) exit;

draw_health = lerp(draw_health, oPlayer.hp, .5);

draw_set_color(c_blue);
draw_rectangle(x+20, y+20, x+619*draw_health/oPlayer.max_health,y+59,false);
draw_set_color(c_white);


