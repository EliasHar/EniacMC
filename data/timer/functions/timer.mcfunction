function timer:time

title @a actionbar [{"text":"Timer : ","bold":"ture","color":"gold"},{"score":{"name":"Min","objective":"glow_time"}},{"text":":"},{"score":{"name":"sec","objective":"glow_time"}}]

execute if score timer glow_time matches ..0 run effect give @a minecraft:glowing 120 1 true
execute if score timer glow_time matches ..0 run scoreboard players set on glow_time 0