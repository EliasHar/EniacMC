# set up the score bords for Red ligth green ligth
scoreboard objectives add Squid_light_x dummy "Squid Game Red Light Green Ligth X axis"
scoreboard objectives add Squid_light_x1 dummy "Squid Game Red Light Green Ligth old X axis"
scoreboard objectives add Squid_light_y dummy "Squid Game Red Light Green Ligth y axis"
scoreboard objectives add Squid_light_y1 dummy "Squid Game Red Light Green Ligth old y axis"
# set up a score bord to keep track of if the red ligth is on
scoreboard objectives add Squid_light dummy
# set some default values
# bool for if the game is on
scoreboard players set game Squid_light 0
# red is a bool if the players shoud die if the move
scoreboard players set red Squid_light 0

# competing players need this tag
tag @s add Squid