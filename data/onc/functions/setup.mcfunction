# setup the scorebords for this game
scoreboard objectives add ONC_Timer dummy
scoreboard objectives add ONC_Arrows dummy
# make and set the game switch to of
scoreboard players set Game ONC_Timer 0
# remove old armour stand if there is one
execute as @e[tag=ONC_End] run kill @s
# summun a armor stand marker for player who are out
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Tags:[ONC_End]}