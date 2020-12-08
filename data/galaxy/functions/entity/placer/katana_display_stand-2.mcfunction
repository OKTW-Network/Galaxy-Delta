execute if block ^ ^ ^-1 #minecraft:passable run tag @s add placeNormal
execute unless entity @s[tag=placeFailed] unless entity @s[tag=placeNormal] if entity @s[predicate=galaxy:entity/item_frame/vertical] unless entity @a[tag=triggerPlace,predicate=minecraft:sneaking] run function galaxy:entity/placer/katana_display_stand-4

execute unless entity @s[tag=placeFailed] unless entity @s[tag=placeCanceled] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:20101,fakeBlock:1}}],Tags:["customEntity","katana_display_stand","type-2","no_overlap","init"],Team:"GalaxyCustomE"}

function galaxy:entity/directional-angle_8
scoreboard players set @e[tag=katana_display_stand,tag=type-2,tag=init] kdsStatus 1
tag @e[tag=katana_display_stand,tag=type-2,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlaceEntity,gamemode=!creative] run function galaxy:entity/give/katana_display_stand-2

execute unless entity @s[tag=placeFailed] run playsound block.wood.place block @a ~ ~ ~ 1 1.4

kill @s
