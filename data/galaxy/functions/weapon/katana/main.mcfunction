execute as @a[scores={ktnFlashCd=0,ktnFlashCrgeLvl=..99},tag=cu.usedItem,tag=!galaxy.ktnTickPatchLock] run function galaxy:weapon/katana/action/flash/charge/tick_patch

execute as @a[tag=wasActShock,predicate=minecraft:on_ground] at @s run function galaxy:weapon/katana/action/shock/levitation-end

function galaxy:weapon/katana/cooldown

# function galaxy:weapon/katana/special_item_entity/main

tag @a[tag=galaxy.ktnTickPatchLock] remove galaxy.ktnTickPatchLock
