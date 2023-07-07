data modify storage cu:item simplify.keep_displayable_tags.items set from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0]
scoreboard players set #item.simplify.keep_displayable_tags.keepHideFlags cu 1
function cu:item/simplify/keep_displayable_tags/main
data modify storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0] set from storage cu:item simplify.keep_displayable_tags.result
