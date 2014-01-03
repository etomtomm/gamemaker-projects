/// spawn powerup

num_spawners = instance_number(obj_powerup_spawn);
spawner_num = irandom_range(0,num_spawners-1);
spawner = instance_find(obj_powerup_spawn,spawner_num);
powerup_type = argument0;
powerup = instance_create(spawner.x, spawner.y, powerup_type);
