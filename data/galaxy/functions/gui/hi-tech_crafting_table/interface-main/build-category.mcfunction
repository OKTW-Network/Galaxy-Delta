function galaxy:gui/hi-tech_crafting_table/interface-main/get-category_icon

data modify entity @s HandItems[0].tag.CustomData.galaxy.data.categoryPrev.icon merge value {Slot:1b}
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.category.icon merge value {Slot:10b}
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.categoryNext.icon merge value {Slot:19b}

data remove block ~ ~ ~ Items[{Slot:1b}]
data remove block ~ ~ ~ Items[{Slot:10b}]
data remove block ~ ~ ~ Items[{Slot:19b}]

data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.CustomData.galaxy.data.categoryPrev.icon
data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.CustomData.galaxy.data.category.icon
data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.CustomData.galaxy.data.categoryNext.icon
