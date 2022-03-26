tag @s add galaxy._tag.ThisWrenchUser

execute as @s[tag=galaxy._tag.ThisWrenchUser] run function galaxy:tool/wrench/uuid/get-use
execute as @s[tag=galaxy._tag.ThisWrenchUser] run function galaxy:tool/wrench/return_used

execute as @s[tag=galaxy._tag.ThisWrenchUser] run function galaxy:tool/wrench/used_on-entity/target/find

# DO NOT CHECK SNEAKING
# entities need to get items back
function galaxy:tool/wrench/used_on-entity/main

execute as @e[tag=galaxy._tag.ThisWrenchTarget] if predicate galaxy:tool/hand_main-wrench run item replace entity @s weapon.mainhand with minecraft:air
tag @e[tag=galaxy._tag.ThisWrenchTarget] remove galaxy._tag.ThisWrenchTarget

tag @s remove galaxy._tag.ThisWrenchUser
