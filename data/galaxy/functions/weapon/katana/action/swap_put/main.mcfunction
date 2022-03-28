function galaxy:weapon/katana/get-style
execute if score #katana.style.katana_scabbard galaxy.weapon matches 1.. if score #katana.style.katana_edge galaxy.weapon matches 1.. if score #katana.style.katana_scabbard galaxy.weapon = #katana.style.katana_edge galaxy.weapon run tag @s add galaxy._tag.canKatanaActionSwapPut
execute if entity @s[tag=galaxy._tag.canKatanaActionSwapPut] run function galaxy:weapon/katana/replaceitem/action-swap_put
execute if entity @s[tag=galaxy._tag.canKatanaActionSwapPut] run function galaxy:weapon/katana/action/swap_put/consequence
tag @s[tag=galaxy._tag.canKatanaActionSwapPut] remove galaxy._tag.canKatanaActionSwapPut
