execute positioned ~ ~1 ~ run kill @e[tag=galaxy.customFakeBlock,tag=galaxy.hi-tech_crafting_table,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.hi_tech_crafting"}'}}}}]
function galaxy:block/summon_item/hi-tech_crafting_table
function galaxy:gui/cleanup_gui_item
kill @s
