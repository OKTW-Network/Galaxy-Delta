data modify storage galaxy:temp string append value " "

scoreboard players remove #1 temp 1
execute if score #1 temp matches 1.. run function galaxy:book/center_space
