function galaxy:weapon/gun/meta/uuid/get-hand_main
execute unless score @s MhGunUUID0New = @s MhGunUUID0 run tag @s add MhGunChanged
execute unless score @s MhGunUUID1New = @s MhGunUUID1 run tag @s add MhGunChanged
execute unless score @s MhGunUUID2New = @s MhGunUUID2 run tag @s add MhGunChanged
execute unless score @s MhGunUUID3New = @s MhGunUUID3 run tag @s add MhGunChanged

execute if entity @s[tag=MhGunChanged] if score @s MhGunUUID0New = @s FhGunUUID0 if score @s MhGunUUID1New = @s FhGunUUID1 if score @s MhGunUUID2New = @s FhGunUUID2 if score @s MhGunUUID3New = @s FhGunUUID3 run tag @s add MhGunSwap
