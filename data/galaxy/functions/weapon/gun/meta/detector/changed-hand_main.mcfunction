execute unless score @s MhGunUUID0 matches -2147483648..2147483647 unless score @s MhGunUUID1 matches -2147483648..2147483647 unless score @s MhGunUUID2 matches -2147483648..2147483647 unless score @s MhGunUUID3 matches -2147483648..2147483647 run tag @s add galaxy.gun.isNew.mainHand

function galaxy:weapon/gun/meta/uuid/get-hand_main
execute unless score @s MhGunUUID0New = @s MhGunUUID0 run tag @s add galaxy.gun.changed.mainHand
execute unless score @s MhGunUUID1New = @s MhGunUUID1 run tag @s add galaxy.gun.changed.mainHand
execute unless score @s MhGunUUID2New = @s MhGunUUID2 run tag @s add galaxy.gun.changed.mainHand
execute unless score @s MhGunUUID3New = @s MhGunUUID3 run tag @s add galaxy.gun.changed.mainHand

execute if entity @s[tag=galaxy.gun.changed.mainHand] if score @s MhGunUUID0New = @s FhGunUUID0 if score @s MhGunUUID1New = @s FhGunUUID1 if score @s MhGunUUID2New = @s FhGunUUID2 if score @s MhGunUUID3New = @s FhGunUUID3 run tag @s add galaxy.gun.swap.mainHand
