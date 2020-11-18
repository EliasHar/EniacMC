execute as @e[type=minecraft:snowball] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invisible:1b,Tags:[Snow]}

execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~ ~1 ~ minecraft:snow_block run kill @e[type=minecraft:snowball,distance=..1,limit=1]
execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~ ~1 ~ minecraft:snow_block run setblock ~ ~1 ~ air

execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~ ~-1 ~ minecraft:snow_block run kill @e[type=minecraft:snowball,distance=..1,limit=1]
execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~ ~-1 ~ minecraft:snow_block run setblock ~ ~-1 ~ air

execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~1 ~ ~ minecraft:snow_block run kill @e[type=minecraft:snowball,distance=..1,limit=1]
execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~1 ~ ~ minecraft:snow_block run setblock ~1 ~ ~ air

execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~-1 ~ ~ minecraft:snow_block run kill @e[type=minecraft:snowball,distance=..1,limit=1]
execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~-1 ~ ~ minecraft:snow_block run setblock ~-1 ~ ~ air

execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~ ~ ~1 minecraft:snow_block run kill @e[type=minecraft:snowball,distance=..1,limit=1]
execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~ ~ ~1 minecraft:snow_block run setblock ~ ~ ~1 air

execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~ ~ ~-1 minecraft:snow_block run kill @e[type=minecraft:snowball,distance=..1,limit=1]
execute as @e[type=minecraft:armor_stand,tag=Snow] at @s if block ~ ~ ~-1 minecraft:snow_block run setblock ~ ~ ~-1 air

kill @e[type=minecraft:armor_stand,tag=Snow]