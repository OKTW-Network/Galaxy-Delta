data modify storage galaxy:temp item set value {Slot:12b,id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20400,guiItem:1}}
execute store result storage galaxy:temp item.Slot byte 1 run scoreboard players get #1 calcu_temp

execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 0..40 run data modify storage galaxy:temp item.tag.CustomModelData set value 20400
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 41..80 run data modify storage galaxy:temp item.tag.CustomModelData set value 20401
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 81..120 run data modify storage galaxy:temp item.tag.CustomModelData set value 20402
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 121..160 run data modify storage galaxy:temp item.tag.CustomModelData set value 20403
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 161..200 run data modify storage galaxy:temp item.tag.CustomModelData set value 20404
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 201..240 run data modify storage galaxy:temp item.tag.CustomModelData set value 20405
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 241..280 run data modify storage galaxy:temp item.tag.CustomModelData set value 20406
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 281..320 run data modify storage galaxy:temp item.tag.CustomModelData set value 20407
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 321..360 run data modify storage galaxy:temp item.tag.CustomModelData set value 20408
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 361..400 run data modify storage galaxy:temp item.tag.CustomModelData set value 20409
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 401..440 run data modify storage galaxy:temp item.tag.CustomModelData set value 20410
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 441..480 run data modify storage galaxy:temp item.tag.CustomModelData set value 20411
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 481..520 run data modify storage galaxy:temp item.tag.CustomModelData set value 20412
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 521..560 run data modify storage galaxy:temp item.tag.CustomModelData set value 20413
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 561..600 run data modify storage galaxy:temp item.tag.CustomModelData set value 20414
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 601..640 run data modify storage galaxy:temp item.tag.CustomModelData set value 20415
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 641..680 run data modify storage galaxy:temp item.tag.CustomModelData set value 20416
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 681..720 run data modify storage galaxy:temp item.tag.CustomModelData set value 20417
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 721..760 run data modify storage galaxy:temp item.tag.CustomModelData set value 20418
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 761..800 run data modify storage galaxy:temp item.tag.CustomModelData set value 20419
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 801..840 run data modify storage galaxy:temp item.tag.CustomModelData set value 20420
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 841..880 run data modify storage galaxy:temp item.tag.CustomModelData set value 20421
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 881..1000 run data modify storage galaxy:temp item.tag.CustomModelData set value 20422
execute if score #2 calcu_temp matches -1 run data modify storage galaxy:temp item.tag.CustomModelData set value 20423
