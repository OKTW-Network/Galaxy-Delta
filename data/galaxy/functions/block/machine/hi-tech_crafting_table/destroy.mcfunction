execute positioned ~ ~1 ~ run kill @e[tag=hi-tech_crafting_table_fake_block,distance=..0.1,sort=nearest,limit=1]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.hi_tech_crafting"}'}}}}]
function galaxy:block/machine/summon/hi-tech_crafting_table
function galaxy:gui/remove-gui_item
kill @s