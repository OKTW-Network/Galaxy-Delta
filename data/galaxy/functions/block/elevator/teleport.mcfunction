execute as @e[tag=galaxy.TargetElevator] at @s positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["galaxy.TargetElevatorAnchor"]}
data modify entity @e[tag=galaxy.TargetElevatorAnchor,limit=1] Rotation set from entity @a[tag=ThisElevatorUser,limit=1] Rotation
tp @a[tag=ThisElevatorUser] @e[tag=galaxy.TargetElevatorAnchor,limit=1]
kill @e[tag=galaxy.TargetElevatorAnchor]

function galaxy:block/elevator/sound/teleport
