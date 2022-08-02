execute as @e[tag=galaxy._tag.TargetElevator] at @s positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["galaxy._tag.elevatorTeleportAnchor"]}
data modify entity @e[tag=galaxy._tag.elevatorTeleportAnchor,limit=1] Rotation set from entity @a[tag=galaxy._tag.ThisElevatorUser,limit=1] Rotation
tp @a[tag=galaxy._tag.ThisElevatorUser] @e[tag=galaxy._tag.elevatorTeleportAnchor,limit=1]
kill @e[tag=galaxy._tag.elevatorTeleportAnchor]

function galaxy:block/elevator/sound/teleport
