tag @s add ThisCrowbarUser

execute as @a[tag=ThisCrowbarUser] run function galaxy:tool/crowbar/uuid/get-use
execute as @a[tag=ThisCrowbarUser] run function galaxy:tool/crowbar/return_used

function galaxy:tool/crowbar/used_on-block/crowbar/find

execute as @a[tag=ThisCrowbarUser,predicate=minecraft:sneaking] run function galaxy:tool/crowbar/used_on-block/main

kill @e[tag=ThisCrowbar]

tag @s remove ThisCrowbarUser
