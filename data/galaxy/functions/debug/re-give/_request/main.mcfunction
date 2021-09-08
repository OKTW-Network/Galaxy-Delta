scoreboard players remove @a[scores={cdReGive=1..}] cdReGive 1

execute as @a[scores={reqReGive=..-1,reqReGive=1..}] at @s run function galaxy:debug/re-give/_request/trigger
