
if (instance_exists(oPlayer))
{
	if (point_distance(oPlayer.x,oPlayer.y,x,y) < 600) //if the player is
	{
		countdown--;
		if (countdown <= 0)
		{
			countdown = countdownrate;
			if (!collision_line(x,y,oPlayer.x,oPlayer.y,oWall,false,false))
			{
			with (instance_create_layer(x,y,"Bullets",oCloudBullet))
			{
				spd = 10;
				direction = other.image_angle + random_range(-3,3);
				image_angle = direction;
			}
			}
		}
	}
}

with (instance_create_layer(x,y,"Bullets",oCloudBullet))
{
	spd = 25;
}