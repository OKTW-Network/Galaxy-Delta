execute as @e[tag=galaxy._tag.TargetElevator] at @s positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["galaxy._tag.TargetElevatorAnchor"]}
data modify entity @e[tag=galaxy._tag.TargetElevatorAnchor,limit=1] Rotation set from entity @a[tag=galaxy._tag.ThisElevatorUser,limit=1] Rotation
tp @a[tag=galaxy._tag.ThisElevatorUser] @e[tag=galaxy._tag.TargetElevatorAnchor,limit=1]
kill @e[tag=galaxy._tag.TargetElevatorAnchor]

function galaxy:block/elevator/sound/teleport
