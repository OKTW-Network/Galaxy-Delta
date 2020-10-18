function galaxy:block/advanced_blast_furnace/work/check-status
execute unless score @s workStatus matches 1 if score @s workProc1 matches 1.. run scoreboard players set @s workProc1 0
execute if score @s workStatus matches 1 run scoreboard players add @s workProc1 1

execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config run function galaxy:block/advanced_blast_furnace/work/complete

execute if score @s workStatus matches 1 if predicate galaxy:block/barrel-open run function galaxy:block/advanced_blast_furnace/work/get-progress
execute if score @s workStatus matches 1 if predicate galaxy:block/barrel-open run scoreboard players set @s setProgress 1
execute if score @s workStatus matches 1 if predicate galaxy:block/barrel-open run scoreboard players set @s setSmelt 1
