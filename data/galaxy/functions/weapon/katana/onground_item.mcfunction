execute as @e[type=item,nbt={Item:{tag:{katana:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] run tag @s add initKatanaOnGroundItem
execute as @e[tag=initKatanaOnGroundItem,nbt={Item:{tag:{type:1}}}] run tag @s add type1
execute as @e[tag=initKatanaOnGroundItem,nbt={Item:{tag:{type:2}}}] run tag @s add type2
execute as @e[tag=initKatanaOnGroundItem,tag=type1] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItemFrame","katana"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.katana.name\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:110400,katana:1,type:1,dur:128,dmg:0,onGroundItem:1}},{}]}
execute as @e[tag=initKatanaOnGroundItem,tag=type2] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItemFrame","nazo"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.nazo.name\",\"italic\":false,\"color\":\"yellow\"}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:120400,katana:1,type:2,dur:128,dmg:0,onGroundItem:1}},{}]}
kill @e[tag=initKatanaOnGroundItem]

execute as @e[type=item,nbt={Item:{tag:{scabbard:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] run tag @s add initScabbardOnGroundItem
execute as @e[tag=initScabbardOnGroundItem,nbt={Item:{tag:{type:1}}}] run tag @s add type1
execute as @e[tag=initScabbardOnGroundItem,nbt={Item:{tag:{type:2}}}] run tag @s add type2
execute as @e[tag=initScabbardOnGroundItem,tag=type1] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItemFrame","katana-scabbard"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.scabbard.name\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:110402,scabbard:1,type:1,dur:128,dmg:0,onGroundItem:1}},{}]}
execute as @e[tag=initScabbardOnGroundItem,tag=type2] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItemFrame","nazo-scabbard"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.scabbard.name\",\"italic\":false,\"color\":\"yellow\"}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:120402,scabbard:1,type:2,dur:128,dmg:0,onGroundItem:1}},{}]}
kill @e[tag=initScabbardOnGroundItem]

execute as @e[type=item,nbt={Item:{tag:{edge:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] run tag @s add initEdgeOnGroundItem
execute as @e[tag=initEdgeOnGroundItem,nbt={Item:{tag:{type:1}}}] run tag @s add type1
execute as @e[tag=initEdgeOnGroundItem,nbt={Item:{tag:{type:2}}}] run tag @s add type2
execute as @e[tag=initEdgeOnGroundItem,tag=type1] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItemFrame","katana-edge"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.katana.name\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:110401,edge:1,type:1,dur:128,dmg:0,onGroundItem:1}},{}]}
execute as @e[tag=initEdgeOnGroundItem,tag=type2] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItemFrame","nazo-edge"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.nazo.name\",\"italic\":false,\"color\":\"yellow\"}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:120401,edge:1,type:2,dur:128,dmg:0,onGroundItem:1}},{}]}
kill @e[tag=initEdgeOnGroundItem]

kill @e[tag=onGroundItemFrame,nbt=!{HandItems:[{Count:1b}]}]

execute as @a[nbt={SelectedItem:{tag:{onGroundItem:1,katana:1,type:1}}}] run function galaxy:weapon/katana/replace_main-hand/katana
execute as @a[nbt={SelectedItem:{tag:{onGroundItem:1,katana:1,type:2}}}] run function galaxy:weapon/katana/replace_main-hand/nazo

execute as @a[nbt={SelectedItem:{tag:{onGroundItem:1,scabbard:1,type:1}}}] run function galaxy:weapon/katana/replace_main-hand/katana_scabbard
execute as @a[nbt={SelectedItem:{tag:{onGroundItem:1,scabbard:1,type:2}}}] run function galaxy:weapon/katana/replace_main-hand/nazo_scabbard

execute as @a[nbt={SelectedItem:{tag:{onGroundItem:1,edge:1,type:1}}}] run function galaxy:weapon/katana/replace_main-hand/katana_edge
execute as @a[nbt={SelectedItem:{tag:{onGroundItem:1,edge:1,type:2}}}] run function galaxy:weapon/katana/replace_main-hand/nazo_edge
