
execute as @e[type=item,nbt={Item:{tag:{katana:1,type:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] at @s facing entity @p eyes run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItem","katana"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.katana.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:10400,katana:1,type:1,dur:128,dmg:0,ongroundItem:1}},{}]}
execute as @e[type=item,nbt={Item:{tag:{katana:1,type:2}},OnGround:1b},nbt=!{PickupDelay:32767s}] at @s facing entity @p eyes run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItem","nazo"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.nazo.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:20400,katana:1,type:2,dur:128,dmg:0,ongroundItem:1}},{}]}

kill @e[type=item,nbt={Item:{tag:{katana:1}},OnGround:1b},nbt=!{PickupDelay:32767s}]


execute as @e[type=item,nbt={Item:{tag:{scabbard:1,type:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] at @s facing entity @p eyes run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItem","katana"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.scabbard.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:10402,scabbard:1,type:1,dur:128,dmg:0,ongroundItem:1}},{}]}
execute as @e[type=item,nbt={Item:{tag:{scabbard:1,type:2}},OnGround:1b},nbt=!{PickupDelay:32767s}] at @s facing entity @p eyes run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItem","katana"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.scabbard.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:20402,scabbard:1,type:2,dur:128,dmg:0,ongroundItem:1}},{}]}

kill @e[type=item,nbt={Item:{tag:{scabbard:1}},OnGround:1b},nbt=!{PickupDelay:32767s}]


execute as @e[type=item,nbt={Item:{tag:{edge:1,type:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] at @s facing entity @p eyes run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItem","katana"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.katana.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:10401,edge:1,type:1,dur:128,dmg:0,ongroundItem:1}},{}]}
execute as @e[type=item,nbt={Item:{tag:{edge:1,type:2}},OnGround:1b},nbt=!{PickupDelay:32767s}] at @s facing entity @p eyes run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["onGroundItem","katana"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:"{\"translate\":\"item.galaxy.nazo.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:20401,edge:1,type:2,dur:128,dmg:0,ongroundItem:1}},{}]}

kill @e[type=item,nbt={Item:{tag:{edge:1}},OnGround:1b},nbt=!{PickupDelay:32767s}]



kill @e[nbt=!{HandItems:[{Count:1b}]},tag=onGroundItem,type=minecraft:armor_stand]

replaceitem entity @e[nbt={SelectedItem:{tag:{ongroundItem:1,katana:1,type:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.katana.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:10200,katana:1,type:1,dur:128,dmg:0}
replaceitem entity @e[nbt={SelectedItem:{tag:{ongroundItem:1,katana:1,type:2}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.nazo.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:20200,katana:1,type:2,dur:128,dmg:0}

replaceitem entity @e[nbt={SelectedItem:{tag:{ongroundItem:1,scabbard:1,type:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.scabbard.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:10202,scabbard:1,type:1,dur:128,dmg:0}
replaceitem entity @e[nbt={SelectedItem:{tag:{ongroundItem:1,scabbard:1,type:2}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.scabbard.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:20202,scabbard:1,type:2,dur:128,dmg:0}

replaceitem entity @e[nbt={SelectedItem:{tag:{ongroundItem:1,edge:1,type:1}}}] weapon.mainhand minecraft:diamond_sword{display:{Name:"{\"translate\":\"item.galaxy.katana.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:10201,edge:1,type:1,dur:128,dmg:0}
replaceitem entity @e[nbt={SelectedItem:{tag:{ongroundItem:1,edge:1,type:2}}}] weapon.mainhand minecraft:diamond_sword{display:{Name:"{\"translate\":\"item.galaxy.nazo.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:63,RepairCost:40,Unbreakable:1b,CustomModelData:20201,edge:1,type:2,dur:128,dmg:0}
