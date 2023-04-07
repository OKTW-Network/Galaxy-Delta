execute if predicate galaxy:block/hi_tech_crafting_table run setblock ~ ~ ~ minecraft:air destroy
function galaxy:gui/cleanup_gui_item
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.hi_tech_crafting"}'}}}}]
function galaxy:block/summon_item/hi_tech_crafting_table
