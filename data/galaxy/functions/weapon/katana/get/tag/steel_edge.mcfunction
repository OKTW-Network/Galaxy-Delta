data modify storage galaxy:get itemTag prepend value {display:{Name:'{"translate":"item.galaxy.katana.steel","italic":false}'},AttributeModifiers:[{AttributeName: "generic.attack_damage", Name: "generic.attackDamage", Amount: 7d, Operation: 0, UUID: [I; 0, 670247, 0, 1710]},{AttributeName: "generic.attack_speed", Name: "generic.attackSpeed", Amount: -2d, Operation: 0, UUID: [I; 0, 587794, 0, 746340]}],HideFlags:39,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:110201,CustomData:{galaxy:{Type:"item",id:"katana",tag:{type:2b,style:1b,flash:{damage:8,distance:5},stun:{damage:2,duration:30},Name:'{"translate":"item.galaxy.katana.steel","italic":false}'}}}}
data modify storage galaxy:temp +weapon.katana.build-lore.itemCustomDataTag set from storage galaxy:get itemTag[0].CustomData.galaxy.tag
function galaxy:weapon/katana/build-lore/edge
data modify storage galaxy:get itemTag[0].display.Lore set from storage galaxy:temp +weapon.katana.build-lore.result