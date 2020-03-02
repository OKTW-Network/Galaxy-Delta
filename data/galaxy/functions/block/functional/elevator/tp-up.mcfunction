execute if score @s elevatorTempUp matches 2 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~2 ~
execute if score @s elevatorTempUp matches 3 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~3 ~
execute if score @s elevatorTempUp matches 4 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~4 ~
execute if score @s elevatorTempUp matches 5 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~5 ~
execute if score @s elevatorTempUp matches 6 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~6 ~
execute if score @s elevatorTempUp matches 7 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~7 ~
execute if score @s elevatorTempUp matches 8 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~8 ~
execute if score @s elevatorTempUp matches 9 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~9 ~
execute if score @s elevatorTempUp matches 10 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~10 ~
execute if score @s elevatorTempUp matches 11 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~11 ~
execute if score @s elevatorTempUp matches 12 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~12 ~
execute if score @s elevatorTempUp matches 13 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~13 ~
execute if score @s elevatorTempUp matches 14 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~14 ~
execute if score @s elevatorTempUp matches 15 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~15 ~
execute if score @s elevatorTempUp matches 16 as @a[tag=reqElevatorGoUp] at @s run tp @s ~ ~16 ~

execute at @a[tag=reqElevatorGoUp] run playsound entity.enderman.teleport player @a ~ ~ ~ 0.8 1.2

tag @a[tag=reqElevatorGoUp] add wasElevatorTpUp

tag @a[tag=reqElevatorGoUp] remove reqElevatorGoUp
