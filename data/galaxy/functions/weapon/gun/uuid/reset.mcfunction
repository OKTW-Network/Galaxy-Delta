execute store result score #gun.UUID.reset.input0 galaxy run data get storage galaxy:temp +weapon.gun.UUID.reset.input[0]
execute store result score #gun.UUID.reset.input1 galaxy run data get storage galaxy:temp +weapon.gun.UUID.reset.input[1]
execute store result score #gun.UUID.reset.input2 galaxy run data get storage galaxy:temp +weapon.gun.UUID.reset.input[2]
execute store result score #gun.UUID.reset.input3 galaxy run data get storage galaxy:temp +weapon.gun.UUID.reset.input[3]

execute as @a if score @s galaxy.gun.UUID.mainHand0 = #gun.UUID.reset.input0 galaxy if score @s galaxy.gun.UUID.mainHand1 = #gun.UUID.reset.input1 galaxy if score @s galaxy.gun.UUID.mainHand2 = #gun.UUID.reset.input2 galaxy if score @s galaxy.gun.UUID.mainHand3 = #gun.UUID.reset.input3 galaxy run tag @s add galaxy.gun.resetUUID.handMain
execute as @a[tag=galaxy.gun.resetUUID.handMain] run function galaxy:weapon/gun/uuid/remove-hand_main
execute as @a[tag=galaxy.gun.resetUUID.handMain] run function galaxy:weapon/gun/data/remove-hand_main
tag @a[tag=galaxy.gun.resetUUID.handMain] remove galaxy.gun.resetUUID.handMain

execute as @a if score @s galaxy.gun.UUID.offHand0 = #gun.UUID.reset.input0 galaxy if score @s galaxy.gun.UUID.offHand1 = #gun.UUID.reset.input1 galaxy if score @s galaxy.gun.UUID.offHand2 = #gun.UUID.reset.input2 galaxy if score @s galaxy.gun.UUID.offHand3 = #gun.UUID.reset.input3 galaxy run tag @s add galaxy.gun.resetUUID.handOff
execute as @a[tag=galaxy.gun.resetUUID.handOff] run function galaxy:weapon/gun/uuid/remove-hand_off
execute as @a[tag=galaxy.gun.resetUUID.handOff] run function galaxy:weapon/gun/data/remove-hand_off
tag @a[tag=galaxy.gun.resetUUID.handOff] remove galaxy.gun.resetUUID.handOff
