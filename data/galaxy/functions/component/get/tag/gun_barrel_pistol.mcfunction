data modify storage galaxy:get itemTag prepend value {display:{Name:'{"translate":"item.galaxy.gun_barrel.pistol","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Slot:"mainhand",Name:"generic.attackDamage",Amount:-1,Operation:2,UUID:[I;0,670247,0,1710]},{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:0,Operation:0,UUID:[I;0,587794,0,746340]}],HideFlags:127,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:105000,CustomData:{galaxy:{Type:"item",id:"component_gun_barrel_pistol",tag:{component:{Type:"gun_barrel",Alteration:{galaxy.gun:{type:1b,interval_value:11,instability_value:20,flexibility_value:869,aim_zoom_value:1,projectile:{distance_value:17,velocity_value:52}}}}}}}}
data modify storage galaxy:temp +component.build_lore.input set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.component.Alteration
data modify storage galaxy:temp +component.build_lore.target set from storage galaxy:temp +component.get.tag.alterationTarget
data remove storage galaxy:temp +component.get.tag.alterationTarget
scoreboard players set #weapon.gun.lore.isComponent galaxy 1
function galaxy:component/build_lore/main
data modify storage galaxy:get itemTag[0].display.Lore append from storage galaxy:temp +component.build_lore.result[]
