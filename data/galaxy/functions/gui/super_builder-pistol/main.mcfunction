# relplace the block when GUI contains non-guiItem
execute if predicate galaxy:gui/check_cover_slot-super_builder unless predicate galaxy:gui/check_cover-super_builder run tag @s add replace
execute if entity @s[tag=replace] run function galaxy:block/machine/super_builder-pistol/replace
tag @s[tag=replace] remove replace

# gui
execute if score @s guiMode matches 0 run function galaxy:gui/super_builder-pistol/mode-0
