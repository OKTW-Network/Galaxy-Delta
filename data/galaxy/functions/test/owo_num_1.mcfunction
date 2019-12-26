tag @e[tag=owo,limit=1] add a
scoreboard players reset @e[tag=a] owo
execute as @e[tag=a] store result score @s owo run scoreboard players get #num owo
scoreboard players add #num owo 1
tag @e[tag=a] remove owo
tag @e[tag=a] remove a
