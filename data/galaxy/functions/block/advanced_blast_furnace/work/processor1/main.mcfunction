function galaxy:block/advanced_blast_furnace/work/processor1/check-status

execute unless score @s workProc1Status matches 1 if score @s workProc1 matches 1.. run scoreboard players set @s workProc1 0

execute if score @s workProc1Status matches 1 run scoreboard players add @s workProc1 1
execute if score @s workProc1Status matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config run function galaxy:block/advanced_blast_furnace/work/processor1/complete

execute if score @s workProc1Status matches 1 run function galaxy:block/advanced_blast_furnace/work/processor1/get-progress
