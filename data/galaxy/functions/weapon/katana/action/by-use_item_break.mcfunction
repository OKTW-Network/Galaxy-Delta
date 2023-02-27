execute if predicate galaxy:weapon/katana/posture/all run function galaxy:weapon/katana/get-action_data

execute if score #galaxy$weapon.katana.action.flash Config matches 1 if entity @s[predicate=minecraft:entity_properties/sneaking,predicate=galaxy:weapon/katana/posture/1,tag=galaxy._tag.katanaSwapPullReady] run tag @s add galaxy._request.katana.swapPull

execute if entity @s[tag=galaxy._request.katana.swapPull] run function galaxy:weapon/katana/action/swap_pull/main

tag @s[tag=galaxy._request.katana.swapPull] remove galaxy._request.katana.swapPull
