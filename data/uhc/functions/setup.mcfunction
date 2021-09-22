scoreboard objectives add uhc dummy "UCH world bordercounder"
scoreboard players set UHC uhc -499
scoreboard players set -UHC uhc 0
scoreboard players set Sec uhc 0
scoreboard players set sec uhc 0
scoreboard players set Min uhc 0
scoreboard players set number uhc -1
scoreboard players set 60 uhc 60
scoreboard players set 20 uhc 20
bossbar add uhc ""
bossbar add blink {"text":"World Border is Shrinking","color":"aqua"}
bossbar set minecraft:uhc visible false
bossbar set minecraft:blink visible false
bossbar set minecraft:blink max 2500
bossbar set minecraft:uhc max 6000
bossbar set minecraft:uhc style notched_12