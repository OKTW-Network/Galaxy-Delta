execute positioned ~ ~1 ~ run kill @e[tag=customFakeBlock,tag=galaxy.hi-tech_crafting_table,distance=..0.05,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.hi_tech_crafting"}'}}}}]
function galaxy:block/summon/hi-tech_crafting_table
function galaxy:gui/remove-gui_item
kill @s
