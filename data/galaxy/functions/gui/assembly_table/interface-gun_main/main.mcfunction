# GUI cover
execute unless entity @s[tag=setCover] run function galaxy:gui/assembly_table/interface-gun_main/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/assembly_table/interface-gun_main/drop_displace-cover
execute if entity @s[tag=setCover] run function galaxy:gui/assembly_table/interface-gun_main/build-cover
tag @s[tag=setCover] remove setCover

# Drop unallowed
function galaxy:gui/assembly_table/interface-gun_main/check-unallowed
execute if entity @s[tag=dropUnallowed] run function galaxy:gui/assembly_table/interface-gun_main/drop-unallowed
tag @s[tag=dropUnallowed] remove dropUnallowed

# Type unallowed
function galaxy:gui/assembly_table/interface-gun_main/check-fortype
execute if entity @s[tag=dropFortype] run function galaxy:gui/assembly_table/interface-gun_main/drop-fortype
tag @s[tag=dropFortype] remove dropFortype

# Assemble
execute if entity @s[tag=!lockAssemble] run function galaxy:gui/assembly_table/interface-gun_main/assemble-build
execute if entity @s[tag=lockAssemble] run function galaxy:gui/assembly_table/interface-gun_main/assemble-destruct
execute if entity @s[tag=lockAssemble] run function galaxy:gui/assembly_table/interface-gun_main/assemble-update

tag @s[tag=update] remove update
