data modify storage galaxy:get itemTag append value {display:{Name:'{"translate":"item.galaxy.laser_core.t1","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Slot:"mainhand",Name:"generic.attackDamage",Amount:-1,Operation:2,UUID:[I;0,670247,0,1710]},{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:0,Operation:0,UUID:[I;0,587794,0,746340]}],HideFlags:127,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:1030000,CustomData:{galaxy:{Type:"item",id:"component_laser_core_t1",tag:{component:{Type:"laser_core",Alteration:[{id:"galaxy.gun",value:{heat_value:97,temperature_min_value:304,projectile:{damage_value:4}}}]}}}}}
data modify storage galaxy:temp +component.build_lore.input set from storage galaxy:get itemTag[-1].CustomData.galaxy.tag.component.Alteration
data modify storage galaxy:temp +component.build_lore.target set from storage galaxy:temp +component.get.tag.alterationTarget
data remove storage galaxy:temp +component.get.tag.alterationTarget
function galaxy:component/build_lore/main
data modify storage galaxy:get itemTag[-1].display.Lore append from storage galaxy:temp +component.build_lore.result[]
