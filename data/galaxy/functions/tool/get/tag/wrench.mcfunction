data modify storage galaxy:get itemTag prepend value {display:{Name:'{"translate":"item.galaxy.wrench","italic":false}'},AttributeModifiers:[{AttributeName: "generic.attack_damage", Slot: "mainhand", Name: "generic.attackDamage", Amount: 1, Operation: 0, UUID: [I;-885041709, 1683771192, -1533567981, -1556236849]},{AttributeName: "generic.attack_speed", Slot: "mainhand", Name: "generic.attackSpeed", Amount: -0.5, Operation: 0, UUID: [I;-98353636, 1098926181, -1340359474, -1752847197]}],HideFlags:37,RepairCost:-2147483648,Unbreakable:1b,CustomModelData:30100,CustomData:{galaxy:{Trigger:"use_wrench",Type:"tool",id:"wrench"}},EntityTag:{CustomNameVisible:0b,Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Tags:["Wrench"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}}}}
function cu:uuid/generate
data modify storage galaxy:get itemTag[0].CustomData.galaxy.UUID set from storage cu:uuid generate
data modify storage galaxy:get itemTag[0].EntityTag.Item.tag.customUUID set from storage cu:uuid generate
