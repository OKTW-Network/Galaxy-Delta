tag @s add galaxy._tag.ThisCrowbarUser

execute as @a[tag=galaxy._tag.ThisCrowbarUser] run function galaxy:tool/crowbar/uuid/get-use
execute as @a[tag=galaxy._tag.ThisCrowbarUser] run function galaxy:tool/crowbar/return_used

function galaxy:tool/crowbar/used_on-entity/target/find

function galaxy:tool/crowbar/used_on-entity/main

execute as @e[tag=galaxy._tag.ThisCrowbarTarget] if predicate galaxy:tool/hand_main-crowbar run item replace entity @s weapon.mainhand with minecraft:air
tag @e[tag=galaxy._tag.ThisCrowbarTarget] remove galaxy._tag.ThisCrowbarTarget

tag @s remove galaxy._tag.ThisCrowbarUser
