data modify storage galaxy:get itemTag prepend value {display:{Name:'{"translate":"item.galaxy.crowbar","italic":false}'},HideFlags:39,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:30200,CustomData:{galaxy:{Trigger:"use_crowbar",Type:"tool",id:"crowbar"}},EntityTag:{CustomNameVisible:0b,Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Tags:["Crowbar"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}}}}
function cu:uuid/generate
data modify storage galaxy:get itemTag[0].CustomData.galaxy.UUID set from storage cu:uuid generate
data modify storage galaxy:get itemTag[0].EntityTag.Item.tag.customUUID set from storage cu:uuid generate
