# save the current x and y positions
execute as @a[tag=Squid] store result score @s Squid_light_x run data get entity @s Pos[0]
execute as @a[tag=Squid] store result score @s Squid_light_z run data get entity @s Pos[2]
# if the current pos does not match the old pos kill the player and the light is red
execute as @a[tag=Squid] if score red Squid_light matches 1 unless score @s Squid_light_x = @s Squid_light_x1 run kill @s
execute as @a[tag=Squid] if score red Squid_light matches 1 unless score @s Squid_light_z = @s Squid_light_z1 run kill @s
# save the new x, y pos as the old x, y pos
function squid_game:update_old