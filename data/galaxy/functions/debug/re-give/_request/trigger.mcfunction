execute unless score @s cdReGive matches 0 run tellraw @s {"text": "Try again later.", "color": "red"}

execute if score @s cdReGive matches 0 run function galaxy:debug/re-give/main
scoreboard players set @s[scores={cdReGive=0}] cdReGive 100

scoreboard players set @s reqReGive 0
scoreboard players enable @s reqReGive
