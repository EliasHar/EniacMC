execute store result bossbar minecraft:uhc value run scoreboard players get UHC uhc
execute if score UHC uhc matches 6000 run bossbar set minecraft:uhc visible true
execute if score UHC uhc matches 6000 run bossbar set minecraft:uhc color green
scoreboard players remove UHC uhc 1 
bossbar set minecraft:uhc name [{"text":"Zone shrinks in: ","bold":"ture","color":"#7d7d7d"},{"score":{"name":"Min","objective":"uhc"}},{"text":":"},{"score":{"name":"sec","objective":"uhc"}}]
execute if score UHC uhc matches 1500 run bossbar set minecraft:uhc color yellow
execute if score Min uhc matches 2 if score sec uhc matches 0 run title @a actionbar {"text":"2 Minutes Left","color":"gold"}
execute if score UHC uhc matches 500 run bossbar set minecraft:uhc color red
execute if score UHC uhc matches 0 run worldborder add -100 25 
execute if score UHC uhc matches 0 run bossbar set minecraft:uhc visible false
execute if score UHC uhc matches 0 run bossbar set minecraft:blink visible true
scoreboard players operation -UHC uhc = UHC uhc
scoreboard players operation -UHC uhc *= number uhc
execute if score UHC uhc matches ..0 store result bossbar minecraft:blink value run scoreboard players get -UHC uhc 
execute if score UHC uhc matches -500 run bossbar set minecraft:blink visible false
execute if score UHC uhc matches ..-500 run scoreboard players set UHC uhc 6000
