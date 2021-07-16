execute unless score #resetUUID.use-score galaxy.gun matches 1 store result score #resetUUID.input.UUID0 galaxy.gun run data get storage galaxy:weapon gun.resetUUID.input[0]
execute unless score #resetUUID.use-score galaxy.gun matches 1 store result score #resetUUID.input.UUID1 galaxy.gun run data get storage galaxy:weapon gun.resetUUID.input[1]
execute unless score #resetUUID.use-score galaxy.gun matches 1 store result score #resetUUID.input.UUID2 galaxy.gun run data get storage galaxy:weapon gun.resetUUID.input[2]
execute unless score #resetUUID.use-score galaxy.gun matches 1 store result score #resetUUID.input.UUID3 galaxy.gun run data get storage galaxy:weapon gun.resetUUID.input[3]

execute as @a if score @s MhGunUUID0 = #resetUUID.input.UUID0 galaxy.gun if score @s MhGunUUID1 = #resetUUID.input.UUID1 galaxy.gun if score @s MhGunUUID2 = #resetUUID.input.UUID2 galaxy.gun if score @s MhGunUUID3 = #resetUUID.input.UUID3 galaxy.gun run tag @s add galaxy.gun.resetUUID.handMain
execute as @a[tag=galaxy.gun.resetUUID.handMain] run function galaxy:weapon/gun/meta/uuid/remove-hand_main
execute as @a[tag=galaxy.gun.resetUUID.handMain] run function galaxy:weapon/gun/meta/data/remove-hand_main
tag @a[tag=galaxy.gun.resetUUID.handMain] remove galaxy.gun.resetUUID.handMain

execute as @a if score @s FhGunUUID0 = #resetUUID.input.UUID0 galaxy.gun if score @s FhGunUUID1 = #resetUUID.input.UUID1 galaxy.gun if score @s FhGunUUID2 = #resetUUID.input.UUID2 galaxy.gun if score @s FhGunUUID3 = #resetUUID.input.UUID3 galaxy.gun run tag @s add galaxy.gun.resetUUID.handOff
execute as @a[tag=galaxy.gun.resetUUID.handOff] run function galaxy:weapon/gun/meta/uuid/remove-hand_off
execute as @a[tag=galaxy.gun.resetUUID.handOff] run function galaxy:weapon/gun/meta/data/remove-hand_off
tag @a[tag=galaxy.gun.resetUUID.handOff] remove galaxy.gun.resetUUID.handOff

scoreboard players set #resetUUID.use-score galaxy.gun 0
