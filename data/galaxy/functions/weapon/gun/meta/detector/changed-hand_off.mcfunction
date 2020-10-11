function galaxy:weapon/gun/meta/uuid/get-hand_off
execute unless score @s FhGunUUID0New = @s FhGunUUID0 run tag @s add FhGunChanged
execute unless score @s FhGunUUID1New = @s FhGunUUID1 run tag @s add FhGunChanged
execute unless score @s FhGunUUID2New = @s FhGunUUID2 run tag @s add FhGunChanged
execute unless score @s FhGunUUID3New = @s FhGunUUID3 run tag @s add FhGunChanged

execute if entity @s[tag=FhGunChanged] if score @s FhGunUUID0New = @s MhGunUUID0 if score @s FhGunUUID1New = @s MhGunUUID1 if score @s FhGunUUID2New = @s MhGunUUID2 if score @s FhGunUUID3New = @s MhGunUUID3 run tag @s add FhGunSwap
