# type
execute if score @s sbldAttribute matches 0 run scoreboard players set @s sbldAtbValueMax 1
execute if score @s sbldAttribute matches 0 run scoreboard players set @s sbldAtbValueMin 1

# style
execute if score @s sbldAttribute matches 1 if score @s optType matches 1 run scoreboard players set @s sbldAtbValueMax 1
execute if score @s sbldAttribute matches 1 if score @s optType matches 1 run scoreboard players set @s sbldAtbValueMin 1

# projectile damage
execute if score @s sbldAttribute matches 2 run scoreboard players set @s sbldAtbValueMax 999
execute if score @s sbldAttribute matches 2 run scoreboard players set @s sbldAtbValueMin 1

# delay
execute if score @s sbldAttribute matches 3 run scoreboard players set @s sbldAtbValueMax 999
execute if score @s sbldAttribute matches 3 run scoreboard players set @s sbldAtbValueMin 2

# projectile distance
execute if score @s sbldAttribute matches 4 run scoreboard players set @s sbldAtbValueMax 80
execute if score @s sbldAttribute matches 4 run scoreboard players set @s sbldAtbValueMin 1

# max temperature
execute if score @s sbldAttribute matches 5 run scoreboard players set @s sbldAtbValueMax 999
execute if score @s sbldAttribute matches 5 run scoreboard players set @s sbldAtbValueMin 5

# heat
execute if score @s sbldAttribute matches 6 run scoreboard players set @s sbldAtbValueMax 999
execute if score @s sbldAttribute matches 6 run scoreboard players set @s sbldAtbValueMin 0

# cooling
execute if score @s sbldAttribute matches 7 run scoreboard players set @s sbldAtbValueMax 999
execute if score @s sbldAttribute matches 7 run scoreboard players set @s sbldAtbValueMin 1

# cooling delay
execute if score @s sbldAttribute matches 8 run scoreboard players set @s sbldAtbValueMax 999
execute if score @s sbldAttribute matches 8 run scoreboard players set @s sbldAtbValueMin 0

# projectile speed
execute if score @s sbldAttribute matches 9 run scoreboard players set @s sbldAtbValueMax 16
execute if score @s sbldAttribute matches 9 run scoreboard players set @s sbldAtbValueMin 1

# projectile offset
execute if score @s sbldAttribute matches 10 run scoreboard players set @s sbldAtbValueMax 999
execute if score @s sbldAttribute matches 10 run scoreboard players set @s sbldAtbValueMin 0
