data modify storage galaxy:get itemTag append value {display:{Name:'{"translate":"item.galaxy.gun_barrel.sniper_rifle","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Slot:"mainhand",Name:"generic.attackDamage",Amount:-1,Operation:2,UUID:[I;0,670247,0,1710]},{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:0,Operation:0,UUID:[I;0,587794,0,746340]}],HideFlags:127,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:1050001,CustomData:{galaxy:{Type:"item",id:"component_gun_barrel_sniper_rifle",tag:{component:{Type:"gun_barrel",Alteration:[{id:"galaxy.gun",value:{type:2b,interval_value:31,heat_modifier:500,instability_value:57,flexibility_value:583,aim_zoom_value:1,projectile:{damage_modifier:500,distance_value:52,velocity_value:156,penetrate_value:90}}}]}}}}}
data modify storage galaxy:temp +component.build_lore.input set from storage galaxy:get itemTag[-1].CustomData.galaxy.tag.component.Alteration
data modify storage galaxy:temp +component.build_lore.target set from storage galaxy:temp +component.get.tag.alterationTarget
data remove storage galaxy:temp +component.get.tag.alterationTarget
function galaxy:component/build_lore/main
data modify storage galaxy:get itemTag[-1].display.Lore append from storage galaxy:temp +component.build_lore.result[]
