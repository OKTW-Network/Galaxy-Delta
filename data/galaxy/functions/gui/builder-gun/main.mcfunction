# GUI cover
execute unless entity @s[tag=setCover] run function galaxy:gui/builder-gun/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/builder-gun/drop_displace-cover
execute if entity @s[tag=setCover] run function galaxy:gui/builder-gun/build-cover
tag @s[tag=setCover] remove setCover

# Drop unallowed
function galaxy:gui/builder-gun/check-unallowed
execute if entity @s[tag=dropUnallowed] run function galaxy:gui/builder-gun/drop-unallowed
tag @s[tag=dropUnallowed] remove dropUnallowed

# Type unallowed
function galaxy:gui/builder-gun/check-fortype
execute if entity @s[tag=dropFortype] run function galaxy:gui/builder-gun/drop-fortype
tag @s[tag=dropFortype] remove dropFortype

# Assemble
execute if entity @s[tag=!lockAssemble] run function galaxy:gui/builder-gun/assemble-build
execute if entity @s[tag=lockAssemble] run function galaxy:gui/builder-gun/assemble-destruct
execute if entity @s[tag=lockAssemble] run function galaxy:gui/builder-gun/assemble-update
