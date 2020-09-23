execute unless entity @s[tag=placeFailed] if entity @s[predicate=galaxy:item_frame/vertical] unless entity @a[tag=triggerPlace,predicate=minecraft:sneaking] run function galaxy:block/functional/placer/katana_display_stand-4

execute unless entity @s[tag=placeFailed] unless entity @s[tag=placeCanceled] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:20201,fakeBlock:1}}],Tags:["katana_display_stand","type-2","no_overlap",fake_block,"init"]}

function galaxy:block/directional-angle_8
scoreboard players set @e[tag=katana_display_stand,tag=type-2,tag=init] holdKatana 100
scoreboard players set @e[tag=katana_display_stand,tag=type-2,tag=init] statusBlockDisp 1
tag @e[tag=katana_display_stand,tag=type-2,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlace] at @s run function galaxy:block/functional/give/katana_display_stand-2

execute unless entity @s[tag=placeFailed] run playsound block.wood.place block @a ~ ~ ~ 1 1.4

kill @s
