# cheak if the player has the special bow
execute as @a if data entity @s SelectedItem.tag.fire run scoreboard players set @s has_bow 1
# if the player shot a bow
execute as @a if score @s has_bow matches 1 if score @s shot_bow matches 1.. run tag @s add Shot
# if the player shot a crossbow
execute as @a if score @s has_bow matches 1 if score @s shot_crossbow matches 1.. run tag @s add Shot

# fire Ball
execute as @a[tag=Shot] at @s run tag @e[type=arrow,tag=!Fire,distance=..2] add Fire
execute as @e[type=arrow,tag=Fire] at @s run summon minecraft:fireball ^ ^ ^1.5 {Fire:20,direction:[0d,0d,0d],ExplosionPower:2}
execute as @e[type=arrow,tag=Fire] run tag @s remove Fire

# reset
execute as @a[tag=Shot] run tag @s remove Shot
execute as @a run scoreboard players reset @s has_bow
execute as @a run scoreboard players reset @s shot_bow
execute as @a run scoreboard players reset @s shot_crossbow