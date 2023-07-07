execute as @e[tag=galaxy._tag.ThisTargetElevator] at @s positioned ~ ~1 ~ align y run summon marker ~ ~ ~ {Tags:["galaxy.dummy.elevatorTeleportAnchor"]}
data modify entity @e[tag=galaxy.dummy.elevatorTeleportAnchor,limit=1] Rotation set from entity @a[tag=galaxy._tag.ThisElevatorUser,limit=1] Rotation
tp @a[tag=galaxy._tag.ThisElevatorUser] @e[tag=galaxy.dummy.elevatorTeleportAnchor,limit=1]
kill @e[tag=galaxy.dummy.elevatorTeleportAnchor]

playsound item.chorus_fruit.teleport player @a ~ ~ ~ 0.8 1.2
