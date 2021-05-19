# turn of the game 
scoreboard players set Game ONC_Timer 0
# remove a bow from everyone in 100 blocks
execute as @a[distance=..100] run clear @s bow{Unbreakable:1b}
# remove a arrow from everyone in 100 blocks
execute as @a[distance=..100] run clear @s minecraft:tipped_arrow{CustomPotionEffects:[{Id:26,Duration:1600,Amplifier:1b,ShowParticles:0b}],CustomPotionColor:4716007,display:{Name:"\"One In The Chamber\""}} 1
# giva a message that the game is Ower
tellraw @a [{"text":"One in the Chamber","bold": true,"color": "gold"},{"text": " is now over","bold": false}]