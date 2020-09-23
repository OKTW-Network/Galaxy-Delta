function galaxy:gui/hi-tech_crafting_table/mode0/get-category_icon

data modify entity @s HandItems[0].tag.GUI.categoryPrev.icon merge value {Slot:1b}
data modify entity @s HandItems[0].tag.GUI.category.icon merge value {Slot:10b}
data modify entity @s HandItems[0].tag.GUI.categoryNext.icon merge value {Slot:19b}

data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.GUI.categoryPrev.icon
data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.GUI.category.icon
data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.GUI.categoryNext.icon
