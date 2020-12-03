tag @s add ThisCrowbarUser

execute as @a[tag=ThisCrowbarUser] run function galaxy:tool/crowbar/uuid/get-use
execute as @a[tag=ThisCrowbarUser] run function galaxy:tool/crowbar/return_used

function galaxy:tool/crowbar/used_on-entity/target/find

function galaxy:tool/crowbar/used_on-entity/main

execute as @e[tag=ThisCrowbarTarget] if predicate galaxy:tool/hand_main-crowbar run replaceitem entity @s weapon.mainhand minecraft:air
tag @e[tag=ThisCrowbarTarget] remove ThisCrowbarTarget

tag @s remove ThisCrowbarUser
