scoreboard players set @s setGuiCover 1

execute if score @s guiMode matches 0 run scoreboard players set @s setSmelt 1
execute if score @s guiMode matches 0 run scoreboard players set @s setProcess 1
execute if score @s guiMode matches 0 run scoreboard players set @s setProgress 1
execute if score @s guiMode matches 0 run function galaxy:block/advanced_blast_furnace/fake_block-smelt_status
