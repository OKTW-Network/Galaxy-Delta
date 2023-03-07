tag @s add galaxy._tag.ThisCrowbarUser

execute as @a[tag=galaxy._tag.ThisCrowbarUser] run function galaxy:tool/crowbar/uuid/get-use
execute as @a[tag=galaxy._tag.ThisCrowbarUser] run function galaxy:tool/crowbar/return_used

function galaxy:tool/crowbar/used_on-block/crowbar/find

execute as @a[tag=galaxy._tag.ThisCrowbarUser,predicate=minecraft:entity_properties/sneaking] run function galaxy:tool/crowbar/used_on-block/main

kill @e[tag=galaxy._tag.ThisCrowbar]

tag @s remove galaxy._tag.ThisCrowbarUser
