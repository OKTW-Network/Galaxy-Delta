# GUI cover
execute unless entity @s[tag=setCover] run function galaxy:gui/assembly_table/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/assembly_table/drop_displace-cover
execute if entity @s[tag=setCover] run function galaxy:gui/assembly_table/build-cover
tag @s[tag=setCover] remove setCover

# Drop unallowed
function galaxy:gui/assembly_table/check-unallowed
execute if entity @s[tag=dropUnallowed] run function galaxy:gui/assembly_table/drop-unallowed
tag @s[tag=dropUnallowed] remove dropUnallowed

# Type unallowed
function galaxy:gui/assembly_table/check-fortype
execute if entity @s[tag=dropFortype] run function galaxy:gui/assembly_table/drop-fortype
tag @s[tag=dropFortype] remove dropFortype

# Assemble
execute if entity @s[tag=!lockAssemble] run function galaxy:gui/assembly_table/assemble-build
execute if entity @s[tag=lockAssemble] run function galaxy:gui/assembly_table/assemble-destruct
execute if entity @s[tag=lockAssemble] run function galaxy:gui/assembly_table/assemble-update
