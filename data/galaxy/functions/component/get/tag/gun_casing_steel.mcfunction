data modify storage galaxy:get itemTag append value {display:{Name:'{"translate":"item.galaxy.gun_casing.steel","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Slot:"mainhand",Name:"generic.attackDamage",Amount:-1,Operation:2,UUID:[I;0,670247,0,1710]},{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:0,Operation:0,UUID:[I;0,587794,0,746340]}],HideFlags:127,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:101002,CustomData:{galaxy:{Type:"item",id:"component_gun_casing_steel",tag:{component:{Type:"gun_casing",Alteration:{galaxy.gun:{interval_modifier:10,temperature_min_modifier:20,temperature_max_value:1286,cooling_modifier:0,cooling_delay_modifier:0,instability_modifier:-15,flexibility_modifier:0,projectile:{damage_modifier:15,distance_modifier:15,velocity_modifier:25}}}}}}}}
data modify storage galaxy:temp +component.build_lore.input set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.component.Alteration
data modify storage galaxy:temp +component.build_lore.target set from storage galaxy:temp +component.get.tag.alterationTarget
data remove storage galaxy:temp +component.get.tag.alterationTarget
scoreboard players set #weapon.gun.lore.isComponent galaxy 1
function galaxy:component/build_lore/main
data modify storage galaxy:get itemTag[0].display.Lore append from storage galaxy:temp +component.build_lore.result[]
