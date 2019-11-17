execute as @e[type=item,nbt={Item:{tag:{saber:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] run tag @s add initSaberOnGroundItem
execute as @e[tag=initSaberOnGroundItem,nbt={Item:{tag:{type:1}}}] run tag @s add type1
execute as @e[tag=initSaberOnGroundItem,nbt={Item:{tag:{type:2}}}] run tag @s add type2
execute as @e[tag=initSaberOnGroundItem,nbt={Item:{tag:{status:1}}}] at @s if score #energy-saber_act_turn_sound Config matches 1 run playsound galaxy:energy-saber.turn_off player @a[distance=..32] ~ ~ ~ 1 1 0.2
execute as @e[tag=initSaberOnGroundItem,tag=type1] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItemFrame","plasum"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.plasum\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:130300,saber:1,status:0,type:1,dur:128,dmg:0,onGroundItem:1}},{}]}
execute as @e[tag=initSaberOnGroundItem,tag=type2] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItemFrame","ranbo"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.ranbo\",\"italic\":false,\"color\":\"light_purple\"}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:140300,saber:1,status:0,type:2,dur:128,dmg:0,onGroundItem:1}},{}]}
kill @e[tag=initSaberOnGroundItem]

kill @e[tag=onGroundItemFrame,nbt=!{HandItems:[{Count:1b}]}]

execute as @a[nbt={SelectedItem:{tag:{onGroundItem:1,saber:1,type:1}}}] run function galaxy:weapon/energy-saber/replace_main-hand/plasum_off
execute as @a[nbt={SelectedItem:{tag:{onGroundItem:1,saber:1,type:2}}}] run function galaxy:weapon/energy-saber/replace_main-hand/ranbo_off
