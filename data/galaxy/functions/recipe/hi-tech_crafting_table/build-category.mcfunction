###IMPORTANT### go check out ../gui/meta/scoreboard/set_score if you modify this file

# execute if score @s htctCategory matches 0 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.tool\",\"italic\":false}"},HideFlags:63,CustomModelData:30104,guiItem:1}
# execute if score @s htctCategory matches 0 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.all\",\"italic\":false}"},HideFlags:63,CustomModelData:30100,guiItem:1}
# execute if score @s htctCategory matches 0 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.material\",\"italic\":false}"},HideFlags:63,CustomModelData:30101,guiItem:1}

# execute if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.all\",\"italic\":false}"},HideFlags:63,CustomModelData:30100,guiItem:1}
execute if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.tool","italic":false}'},HideFlags:63,CustomModelData:30105,guiItem:1}
execute if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.material","italic":false}'},HideFlags:63,CustomModelData:30101,guiItem:1}
execute if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.machine","italic":false}'},HideFlags:63,CustomModelData:30102,guiItem:1}

execute if score @s htctCategory matches 2 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.material","italic":false}'},HideFlags:63,CustomModelData:30101,guiItem:1}
execute if score @s htctCategory matches 2 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.machine","italic":false}'},HideFlags:63,CustomModelData:30102,guiItem:1}
execute if score @s htctCategory matches 2 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},HideFlags:63,CustomModelData:30103,guiItem:1}

execute if score @s htctCategory matches 3 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.machine","italic":false}'},HideFlags:63,CustomModelData:30102,guiItem:1}
execute if score @s htctCategory matches 3 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},HideFlags:63,CustomModelData:30103,guiItem:1}
execute if score @s htctCategory matches 3 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,CustomModelData:30104,guiItem:1}

execute if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},HideFlags:63,CustomModelData:30103,guiItem:1}
execute if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,CustomModelData:30104,guiItem:1}
execute if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.tool","italic":false}'},HideFlags:63,CustomModelData:30105,guiItem:1}

execute if score @s htctCategory matches 5 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,CustomModelData:30104,guiItem:1}
execute if score @s htctCategory matches 5 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.tool","italic":false}'},HideFlags:63,CustomModelData:30105,guiItem:1}
execute if score @s htctCategory matches 5 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.material","italic":false}'},HideFlags:63,CustomModelData:30101,guiItem:1}
# execute if score @s htctCategory matches 5 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.all\",\"italic\":false}"},CustomModelData:30100,guiItem:1}
