scoreboard players add @s gunDischargeLvl 1
scoreboard players operation @s gunChargeLvl -= @s gunDischargeLvl
execute if score @s gunChargeLvl matches ..-1 run scoreboard players set @s gunChargeLvl 0

execute if score @s gunChargeLvl matches 0 run scoreboard players set @s gunDischargeLvl 0
