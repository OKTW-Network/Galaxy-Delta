data modify storage galaxy:get itemTag append value {display:{Name:'{"translate":"item.galaxy.color_lens.red","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Slot:"mainhand",Name:"generic.attackDamage",Amount:-1,Operation:2,UUID:[I;0,670247,0,1710]},{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:0,Operation:0,UUID:[I;0,587794,0,746340]}],HideFlags:127,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:1070000,CustomData:{galaxy:{Type:"item",id:"component_color_lens_red",tag:{component:{Type:"color_lens",Alteration:[{id:"galaxy.gun",value:{projectile:{color:{id:"red",numericID:1,Name:'{"translate":"color.minecraft.red"}'}}}}]}}}}}
data modify storage galaxy:temp +component.build_lore.input set from storage galaxy:get itemTag[-1].CustomData.galaxy.tag.component.Alteration
data modify storage galaxy:temp +component.build_lore.target set from storage galaxy:temp +component.get.tag.alterationTarget
data remove storage galaxy:temp +component.get.tag.alterationTarget
function galaxy:component/build_lore/main
data modify storage galaxy:get itemTag[-1].display.Lore append from storage galaxy:temp +component.build_lore.result[]
