# style
execute if score @s sbldAtbType matches 1 run scoreboard players set @s sbldAtbVMax 1
execute if score @s sbldAtbType matches 1 run scoreboard players set @s sbldAtbVMin 1

# damage
execute if score @s sbldAtbType matches 2 run scoreboard players set @s sbldAtbVMax 999
execute if score @s sbldAtbType matches 2 run scoreboard players set @s sbldAtbVMin 1

# max distance
execute if score @s sbldAtbType matches 3 run scoreboard players set @s sbldAtbVMax 64
execute if score @s sbldAtbType matches 3 run scoreboard players set @s sbldAtbVMin 1

# firing delay
execute if score @s sbldAtbType matches 4 run scoreboard players set @s sbldAtbVMax 999
execute if score @s sbldAtbType matches 4 run scoreboard players set @s sbldAtbVMin 2

# max temperature
execute if score @s sbldAtbType matches 5 run scoreboard players set @s sbldAtbVMax 999
execute if score @s sbldAtbType matches 5 run scoreboard players set @s sbldAtbVMin 5

# firing heat
execute if score @s sbldAtbType matches 6 run scoreboard players set @s sbldAtbVMax 999
execute if score @s sbldAtbType matches 6 run scoreboard players set @s sbldAtbVMin 0

# cooling
execute if score @s sbldAtbType matches 7 run scoreboard players set @s sbldAtbVMax 999
execute if score @s sbldAtbType matches 7 run scoreboard players set @s sbldAtbVMin 1

# cooling delay
execute if score @s sbldAtbType matches 8 run scoreboard players set @s sbldAtbVMax 999
execute if score @s sbldAtbType matches 8 run scoreboard players set @s sbldAtbVMin 0

# bullet speed
execute if score @s sbldAtbType matches 9 run scoreboard players set @s sbldAtbVMax 16
execute if score @s sbldAtbType matches 9 run scoreboard players set @s sbldAtbVMin 1

# bullet offset
execute if score @s sbldAtbType matches 10 run scoreboard players set @s sbldAtbVMax 999
execute if score @s sbldAtbType matches 10 run scoreboard players set @s sbldAtbVMin 1
