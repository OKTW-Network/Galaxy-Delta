data modify storage galaxy:get item set value []
function galaxy:book/get/galaxy_delta
data modify storage cu:item replaceitem.input set from storage galaxy:get item[0]
data modify storage cu:item replaceitem.input.Count set from entity @s SelectedItem.Count
function cu:item/replaceitem/main_hand
