# Parts to result
tag @s[tag=!lockAssemble,predicate=galaxy:gui/check-builder_gun_require,predicate=!galaxy:gui/check-builder_gun_result] add setResult
# TODO check optional parts
execute if entity @s[tag=setResult] run function galaxy:gui/builder-gun/build-result/main
execute if entity @s[tag=setResult] run tag @s add lockAssemble
tag @s[tag=setResult] remove setResult

# Result to parts
tag @s[tag=!lockAssemble,predicate=galaxy:gui/check-builder_gun_result,predicate=!galaxy:gui/check-builder_gun_require] add setParts
execute if entity @s[tag=setParts] if predicate galaxy:gui/check_slot-builder_gun_parts run function galaxy:gui/builder-gun/drop-incomplete_parts
execute if entity @s[tag=setParts] run function galaxy:gui/builder-gun/build-parts
execute if entity @s[tag=setParts] run tag @s add lockAssemble
tag @s[tag=setParts] remove setParts
