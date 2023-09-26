data modify storage galaxy:get itemTag append value {display:{Name:'{"translate":"item.galaxy.katana_scabbard_raw","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Slot:"mainhand",Name:"generic.attackDamage",Amount:-1,Operation:2,UUID:[I;0,670247,0,1710]},{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:0,Operation:0,UUID:[I;0,587794,0,746340]}],HideFlags:127,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:111000,CustomData:{galaxy:{Type:"item",id:"component_katana_scabbard",tag:{component:{Type:"katana_scabbard",Alteration:{galaxy.katana:{}}}}}}}
data modify storage galaxy:temp +component.build_lore.input set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.component.Alteration
data modify storage galaxy:temp +component.build_lore.target set from storage galaxy:temp +component.get.tag.alterationTarget
data remove storage galaxy:temp +component.get.tag.alterationTarget
function galaxy:component/build_lore/main
data modify storage galaxy:get itemTag[0].display.Lore append from storage galaxy:temp +component.build_lore.result[]
