# place
execute as @e[tag=katana_showcase_placer,tag=type-1] at @s run summon minecraft:armor_stand ~ ~0.25 ~ {DisabledSlots:4079166,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},CustomNameVisible:0b,Small:1b,ShowArms:1b,Invisible:1b,Silent:1b,Tags:["katana_showcase","type-1","function_place"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:20200,fakeBlock:1,EntityTag:{CustomNameVisible:0b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["katana_showcase","type-1"]}}}]}
execute as @e[tag=katana_showcase_placer,tag=type-2] at @s run summon minecraft:armor_stand ~ ~0.25 ~ {DisabledSlots:4079166,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},CustomNameVisible:0b,Small:1b,ShowArms:1b,Invisible:1b,Silent:1b,Tags:["katana_showcase","type-2","function_place"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:20201,fakeBlock:1,EntityTag:{CustomNameVisible:0b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["katana_showcase","type-2"]}}}]}

execute as @e[tag=katana_showcase,tag=function_place] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=katana_showcase_placer,distance=..0.5,sort=nearest,limit=1] Rotation[0]
execute as @e[tag=katana_showcase,tag=function_place] at @s run kill @e[tag=katana_showcase_placer,distance=..0.5,sort=nearest,limit=1]
execute as @e[tag=katana_showcase,tag=function_place] run tag @s remove function_place


# on remove
execute as @e[tag=katana_showcase_detector] at @s unless entity @e[tag=katana_showcase,distance=..1,sort=nearest,limit=1] run tag @s add function_remove

kill @e[tag=katana_showcase_detector,tag=function_remove]


# display
execute as @e[tag=katana_showcase] if data entity @s HandItems[0].tag.katana unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add function_display
execute as @e[tag=katana_showcase] if data entity @s HandItems[0].tag.scabbard unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add function_display
execute as @e[tag=katana_showcase] if data entity @s HandItems[0].tag.edge unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add function_display

execute as @e[tag=katana_showcase,tag=type-1,tag=function_display] run function galaxy:block/functional/katana_showcase-1
execute as @e[tag=katana_showcase,tag=type-2,tag=function_display] run function galaxy:block/functional/katana_showcase-2

execute as @e[tag=katana_showcase,tag=function_display] run tag @s remove function_display

## delete off-hand item if main-hand empty
execute as @e[tag=katana_showcase] unless data entity @s HandItems[0].Count if data entity @s HandItems[1].Count run replaceitem entity @s weapon.offhand air

## item convert
replaceitem entity @e[nbt={SelectedItem:{tag:{katanaDisplay:1,katana:1,type:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.katana\",\"italic\":false}"},HideFlags:39,Unbreakable:1b,CustomModelData:10200,katana:1,dur:128,dmg:0,type:1}
replaceitem entity @e[nbt={SelectedItem:{tag:{katanaDisplay:1,katana:1,type:2}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.nazo\",\"italic\":false,\"color\":\"yellow\"}"},HideFlags:39,Unbreakable:1b,CustomModelData:20200,katana:1,dur:128,dmg:0,type:2}

replaceitem entity @e[nbt={SelectedItem:{tag:{katanaDisplay:1,scabbard:1,type:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.scabbard\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:10202,scabbard:1,type:1,dur:128,dmg:0}
replaceitem entity @e[nbt={SelectedItem:{tag:{katanaDisplay:1,scabbard:1,type:2}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.scabbard\",\"italic\":false,\"color\":\"yellow\"}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:20202,scabbard:1,type:2,dur:128,dmg:0}

replaceitem entity @e[nbt={SelectedItem:{tag:{katanaDisplay:1,edge:1,type:1}}}] weapon.mainhand minecraft:diamond_sword{display:{Name:"{\"translate\":\"item.galaxy.katana\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:10201,edge:1,type:1,dur:128,dmg:0}
replaceitem entity @e[nbt={SelectedItem:{tag:{katanaDisplay:1,edge:1,type:1}}}] weapon.mainhand minecraft:diamond_sword{display:{Name:"{\"translate\":\"item.galaxy.nazo\",\"italic\":false,\"color\":\"yellow\"}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:20201,edge:1,type:2,dur:128,dmg:0}


# throw out non-katana items
execute as @e[tag=katana_showcase] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add function_throw
execute as @e[tag=katana_showcase,tag=function_throw] at @s run summon minecraft:item ~ ~ ~ {Tags:["katana_showcase_throw"],PickupDelay:10,Item:{id:"minecraft:stone",Count:1b}}
execute as @e[tag=katana_showcase,tag=function_throw] at @s run data modify entity @e[tag=katana_showcase_throw,distance=..0.5,sort=nearest,limit=1] Item set from entity @s HandItems[0]
execute as @e[tag=katana_showcase,tag=function_throw] run replaceitem entity @s weapon.mainhand air
execute as @e[tag=katana_showcase,tag=function_throw] at @s run tag @e[tag=katana_showcase_throw,distance=..0.5,sort=nearest,limit=1] remove katana_showcase_throw
execute as @e[tag=katana_showcase,tag=function_throw] run tag @s remove function_throw
