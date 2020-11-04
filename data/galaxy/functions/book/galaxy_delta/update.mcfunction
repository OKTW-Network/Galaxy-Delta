function galaxy:book/galaxy_delta/refresh

data modify storage galaxy:get item set value []
function galaxy:book/get/galaxy_delta
data modify storage cu:replaceitem item set from storage galaxy:get item[0]

execute if predicate galaxy:book/hand_main-galaxy_delta run function cu:replaceitem/hand_main
execute if predicate galaxy:book/hand_off-galaxy_delta run function cu:replaceitem/hand_off

scoreboard players set @s[scores={bookGdUpdate=..-1,bookGdUpdate=1..}] bookGdUpdate 0
scoreboard players enable @s bookGdUpdate
