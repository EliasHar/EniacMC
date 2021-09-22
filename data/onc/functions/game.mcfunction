# if you are hit with a special arrow then teleport to the Armourstand
execute as @a[nbt={ActiveEffects:[{Id:26b},{Amplifier:1b}]}] if entity @s[nbt={HurtTime:5s}] at @e[tag=ONC_End] run teleport ~ ~ ~ 
execute as @a[nbt={ActiveEffects:[{Id:26b},{Amplifier:1b}]}] if entity @s[nbt={HurtTime:5s}] run tellraw @a [{"selector":"@s","bold":true,"color":"gold"},{"text":" is out of this round","bold": false}] 
execute as @a[nbt={ActiveEffects:[{Id:26b},{Amplifier:1b}]}] if entity @s[nbt={HurtTime:5s}] run effect clear @s luck
execute as @a[nbt={ActiveEffects:[{Id:26b},{Amplifier:1b}]}] if entity @s[nbt={HurtTime:5s}] run effect give @s instant_health 3 10 true
execute as @a[nbt={ActiveEffects:[{Id:26b},{Amplifier:1b}]}] if entity @s[nbt={HurtTime:5s}] run clear @s bow{Unbreakable:1b}
# giva a arrow if you have none

# add to the timer  
execute as @a run scoreboard players add @s ONC_Timer 1
# if a player has not had a arrow for 5 sec then give them one
execute as @a if score @s ONC_Timer matches 100.. run give @s minecraft:tipped_arrow{CustomPotionEffects:[{Id:26,Duration:1600,Amplifier:1b,ShowParticles:0b}],CustomPotionColor:4716007,display:{Name:"\"One In The Chamber\""}} 1
# reset the score of players with a arrow
execute as @a if data entity @s Inventory[{id:"minecraft:tipped_arrow",tag:{CustomPotionEffects:[{Id:26,Amplifier:1b}]}}] run scoreboard players reset @s ONC_Timer

# make sure players have only 1 arrow

# store the value of how many arrows a player has
execute as @a store result score @s ONC_Arrows run data get entity @s Inventory[{id:"minecraft:tipped_arrow",tag:{CustomPotionEffects:[{Id:26,Amplifier:1b}]}}].Count
# if a player has 2 or more remove all there arrows
execute as @a if score @s ONC_Arrows matches 2.. run clear @s minecraft:tipped_arrow
# reset the score
execute as @a run scoreboard players reset @s ONC_Arrows
# kill all arrow that have hit the ground
kill @e[type=minecraft:arrow,nbt={inGround:1b}]