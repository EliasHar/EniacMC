# save the new x, y pos as the old x, y pos
execute as @a[tag=Squid] store result score @s Squid_light_x1 run scoreboard players get @s Squid_light_x 
execute as @a[tag=Squid] store result score @s Squid_light_z1 run scoreboard players get @s Squid_light_z 