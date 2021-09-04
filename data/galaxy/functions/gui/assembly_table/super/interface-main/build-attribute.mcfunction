function galaxy:gui/assembly_table/super/interface-main/get-attribute_icon

data modify entity @s HandItems[0].tag.GUI.attributePrev.icon merge value {Slot:1b}
data modify entity @s HandItems[0].tag.GUI.attribute.icon merge value {Slot:10b}
data modify entity @s HandItems[0].tag.GUI.attributeNext.icon merge value {Slot:19b}

data remove block ~ ~ ~ Items[{Slot:1b}]
data remove block ~ ~ ~ Items[{Slot:10b}]
data remove block ~ ~ ~ Items[{Slot:19b}]

data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.GUI.attributePrev.icon
data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.GUI.attribute.icon
data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.GUI.attributeNext.icon
