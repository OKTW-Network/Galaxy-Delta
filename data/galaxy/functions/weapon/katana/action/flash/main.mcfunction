function galaxy:weapon/katana/meta/detector/check-action-swap_put
execute if entity @s[tag=canActSwapPut] run function galaxy:weapon/katana/replaceitem/action-swap_put
execute if entity @s[tag=canActSwapPut] run function galaxy:weapon/katana/action/flash/consequence
