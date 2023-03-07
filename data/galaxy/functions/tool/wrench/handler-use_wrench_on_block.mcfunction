tag @s add galaxy._tag.ThisWrenchUser

execute as @s[tag=galaxy._tag.ThisWrenchUser] run function galaxy:tool/wrench/uuid/get-use
execute as @s[tag=galaxy._tag.ThisWrenchUser] run function galaxy:tool/wrench/return_used

execute as @s[tag=galaxy._tag.ThisWrenchUser] run function galaxy:tool/wrench/used_on-block/wrench/find

execute as @s[tag=galaxy._tag.ThisWrenchUser,predicate=minecraft:entity_properties/sneaking] run function galaxy:tool/wrench/used_on-block/main

kill @e[tag=galaxy._tag.ThisWrench]

tag @s remove galaxy._tag.ThisWrenchUser
