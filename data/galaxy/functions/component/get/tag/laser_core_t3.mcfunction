data modify storage galaxy:get itemTag append value {display:{Name:'{"translate":"item.galaxy.laser_core.t3","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Slot:"mainhand",Name:"generic.attackDamage",Amount:-1,Operation:2,UUID:[I;0,670247,0,1710]},{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:0,Operation:0,UUID:[I;0,587794,0,746340]}],HideFlags:127,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:103002,CustomData:{galaxy:{Type:"item",id:"component_laser_core_t3",tag:{component:{Type:"laser_core",Alteration:{galaxy.gun:{heat_value:144,temperature_min_value:334,projectile:{damage_value:8}}}}}}}}
data modify storage galaxy:temp +component.build_lore.input set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.component.Alteration
data modify storage galaxy:temp +component.build_lore.target set from storage galaxy:temp +component.get.tag.alterationTarget
data remove storage galaxy:temp +component.get.tag.alterationTarget
scoreboard players set #weapon.gun.lore.isComponent galaxy 1
function galaxy:component/build_lore/main
data modify storage galaxy:get itemTag[0].display.Lore append from storage galaxy:temp +component.build_lore.result[]
