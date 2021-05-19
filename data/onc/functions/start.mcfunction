# turn on the game 
scoreboard players set Game ONC_Timer 1
# give everyone in 100 blocks a unbrekable bow
execute as @a[distance=..500] run give @s bow{Unbreakable:1b}
# give everyone in 100 blocks a arrow
execute as @a[distance=..500] run give @s minecraft:tipped_arrow{CustomPotionEffects:[{Id:26,Duration:1600,Amplifier:1b,ShowParticles:0b}],CustomPotionColor:4716007,display:{Name:"\"One In The Chamber\""}} 1
# give a message that the game has started
tellraw @a [{"text":"One in the Chamber","bold": true,"color": "gold"},{"text": " is now starting","bold": false}]