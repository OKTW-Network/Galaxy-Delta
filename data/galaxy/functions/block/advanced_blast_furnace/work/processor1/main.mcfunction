function galaxy:block/advanced_blast_furnace/work/processor1/check-recipe

execute if score @s workProc1CanWork matches 1 unless score @s workProc1Burn matches 1.. run function galaxy:block/advanced_blast_furnace/work/processor1/burn/start

scoreboard players set #1 calcu_temp 0
execute unless score @s workProc1Burn matches 1.. if score @s statesLit matches 1 run scoreboard players set #1 calcu_temp 1
execute if score @s workProc1Burn matches 1.. if score @s statesLit matches 0 run scoreboard players set #1 calcu_temp 1
execute if score #1 calcu_temp matches 1 run function galaxy:block/advanced_blast_furnace/states/lit/main

execute unless score @s workProc1CanWork matches 1 if score @s workProc1 matches 1.. run scoreboard players set @s workProc1 0

execute if score @s workProc1CanWork matches 1 if score @s workProc1Burn matches 1.. run scoreboard players add @s workProc1 1
execute if score @s workProc1CanWork matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config run function galaxy:block/advanced_blast_furnace/work/processor1/complete

scoreboard players remove @s[scores={workProc1Burn=1..}] workProc1Burn 1

execute unless score @s workProc1Burn matches 1.. if score @s workProc1 matches 1.. run function galaxy:block/advanced_blast_furnace/work/processor1/burn/check-fuel
execute unless score @s workProc1Burn matches 1.. if score @s workProc1 matches 1.. unless score @s workProc1CanFuel matches 1 run scoreboard players set @s workProc1 0
