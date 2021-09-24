execute unless score @s FhGunUUID0 matches -2147483648..2147483647 unless score @s FhGunUUID1 matches -2147483648..2147483647 unless score @s FhGunUUID2 matches -2147483648..2147483647 unless score @s FhGunUUID3 matches -2147483648..2147483647 run tag @s add galaxy.gun.isNew.offHand

function galaxy:weapon/gun/meta/uuid/get-hand_off
execute unless score @s FhGunUUID0New = @s FhGunUUID0 run tag @s add galaxy.gun.changed.offHand
execute unless score @s FhGunUUID1New = @s FhGunUUID1 run tag @s add galaxy.gun.changed.offHand
execute unless score @s FhGunUUID2New = @s FhGunUUID2 run tag @s add galaxy.gun.changed.offHand
execute unless score @s FhGunUUID3New = @s FhGunUUID3 run tag @s add galaxy.gun.changed.offHand

execute if entity @s[tag=galaxy.gun.changed.offHand] if score @s FhGunUUID0New = @s MhGunUUID0 if score @s FhGunUUID1New = @s MhGunUUID1 if score @s FhGunUUID2New = @s MhGunUUID2 if score @s FhGunUUID3New = @s MhGunUUID3 run tag @s add galaxy.gun.swap.offHand
