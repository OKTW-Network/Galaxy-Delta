# GUI cover
execute unless entity @s[tag=setCover] run function galaxy:gui/builder-gun/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/builder-gun/drop_displace-cover
execute if entity @s[tag=setCover] run function galaxy:gui/builder-gun/build-cover
tag @s[tag=setCover] remove setCover

# Lock slot
execute unless entity @s[tag=setLock] run function galaxy:gui/builder-gun/check-lock
execute if entity @s[tag=setLock] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setLock] run function galaxy:gui/builder-gun/drop_displace-lock
execute if entity @s[tag=setLock] run function galaxy:gui/builder-gun/build-lock
tag @s[tag=setLock] remove setLock

# Drop unallowed
function galaxy:gui/builder-gun/check-unallowed
execute if entity @s[tag=dropUnallowed] run function galaxy:gui/builder-gun/drop-unallowed
tag @s[tag=dropUnallowed] remove dropUnallowed

# Assemble
execute if entity @s[tag=!lockAssemble] run function galaxy:gui/builder-gun/assemble-build
execute if entity @s[tag=lockAssemble] run function galaxy:gui/builder-gun/assemble-destruct
execute if entity @s[tag=lockAssemble] run function galaxy:gui/builder-gun/assemble-update
