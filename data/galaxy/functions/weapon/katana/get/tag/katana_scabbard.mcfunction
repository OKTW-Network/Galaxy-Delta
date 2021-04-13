data modify storage galaxy:get itemTag prepend value {display:{Name:'{"translate":"item.galaxy.scabbard","italic":false}'},HideFlags:39,RepairCost:2147483647,Unbreakable:1b,CustomModelData:110202,CustomData:{galaxy:{Type:"item",id:"katana",tag:{type:3b,style:1b,flash:{damage:8,distance:5,charge:10},stun:{damage:2,duration:30},Name:'{"translate":"item.galaxy.katana","italic":false}'}}}}
data modify storage galaxy:temp +weapon.katana.build-lore.itemCustomDataTag set from storage galaxy:get itemTag[0].CustomData.galaxy.tag
function galaxy:weapon/katana/build-lore/scabbard
data modify storage galaxy:get itemTag[0].display.Lore set from storage galaxy:temp +weapon.katana.build-lore.result
