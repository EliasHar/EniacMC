scoreboard players remove timer glow_time 1
execute store result score Sec glow_time run scoreboard players get timer glow_time
execute store result score Sec glow_time run scoreboard players operation Sec glow_time /= 20 glow_time
execute store result score Min glow_time run scoreboard players get Sec glow_time 
execute store result score Min glow_time run scoreboard players operation Min glow_time /= 60 glow_time
execute store result score sec glow_time run scoreboard players get Sec glow_time 
execute store result score sec glow_time run scoreboard players operation sec glow_time %= 60 glow_time
