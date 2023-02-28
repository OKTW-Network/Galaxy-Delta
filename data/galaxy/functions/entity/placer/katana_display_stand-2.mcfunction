execute if block ^ ^ ^-1 #global:unattachable run tag @s add placeNormal
execute unless entity @s[tag=galaxy._tag.placeFailed] unless entity @s[tag=placeNormal] if entity @s[predicate=minecraft:entity_properties/item_frame/vertical] unless entity @a[tag=triggerPlace,predicate=minecraft:entity_properties/sneaking] run function galaxy:entity/placer/katana_display_stand-4

execute unless entity @s[tag=galaxy._tag.placeFailed] unless entity @s[tag=placeCanceled] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:201001}}],Tags:["galaxy.customEntity","galaxy.katana_display_stand","galaxy._tag.noOverlap","init"]}

function galaxy:entity/directional-angle_8
scoreboard players set @e[tag=galaxy.customEntity,tag=galaxy.katana_display_stand,tag=init] galaxy.entity.katana_display_stand.type 2
scoreboard players set @e[tag=galaxy.customEntity,tag=galaxy.katana_display_stand,tag=init] galaxy.entity.states.katana_display_stand.style 1
tag @e[tag=galaxy.customEntity,tag=galaxy.katana_display_stand,tag=init] remove init

execute if entity @s[tag=galaxy._tag.placeFailed] as @a[tag=galaxy._tag.ThisPlaceEntity,gamemode=!creative] run function galaxy:entity/give/katana_display_stand-2

execute unless entity @s[tag=galaxy._tag.placeFailed] run playsound block.wood.place block @a ~ ~ ~ 1 1.4

kill @s
