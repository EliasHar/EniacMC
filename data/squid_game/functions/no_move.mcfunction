# save the current x and yposision
execute as @a[tag=Squid] store result score @s Squid_light_x run data get entity @s Pos[0]
execute as @a[tag=Squid] store result score @s Squid_ligh_y run data get entity @s Pos[2]
# if the current pos does not match the old pos kill the player and the ligth is red
execute as @a[tag=Squid] if score Squid_ligth red matches 1 unless score @s Squid_light_x = @s Squid_light_x1 run kill @s
execute as @a[tag=Squid] if score Squid_ligth red matches 1 unless score @s Squid_ligh_y = @s Squid_light_y1 run kill @s
# save the new x, y pos as the old x, y pos
execute as @a[tag=Squid] store result score @s Squid_light_x1 run scoreboard players get @s Squid_light_x 
execute as @a[tag=Squid] store result score @s Squid_light_y1 run scoreboard players get @s Squid_ligh_y 