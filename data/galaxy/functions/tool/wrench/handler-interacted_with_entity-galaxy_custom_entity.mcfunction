tag @s add ThisWrenchUser

execute as @a[tag=ThisWrenchUser] run function galaxy:tool/wrench/uuid/get-use
execute as @a[tag=ThisWrenchUser] run function galaxy:tool/wrench/return_used

function galaxy:tool/wrench/used_on-entity/target/find

function galaxy:tool/wrench/used_on-entity/main

execute as @e[tag=ThisWrenchTarget] if predicate galaxy:tool/hand_main-wrench run replaceitem entity @s weapon.mainhand minecraft:air
tag @e[tag=ThisWrenchTarget] remove ThisWrenchTarget

tag @s remove ThisWrenchUser
