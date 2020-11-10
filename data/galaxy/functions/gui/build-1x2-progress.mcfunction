data modify storage galaxy:temp item set value {Slot:12b,id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20400,guiItem:1}}
execute store result storage galaxy:temp item.Slot byte 1 run scoreboard players get #1 calcu_temp

execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 0..45 run data modify storage galaxy:temp item.tag.CustomModelData set value 20400
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 46..90 run data modify storage galaxy:temp item.tag.CustomModelData set value 20401
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 91..135 run data modify storage galaxy:temp item.tag.CustomModelData set value 20402
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 136..180 run data modify storage galaxy:temp item.tag.CustomModelData set value 20403
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 181..225 run data modify storage galaxy:temp item.tag.CustomModelData set value 20404
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 226..270 run data modify storage galaxy:temp item.tag.CustomModelData set value 20405
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 271..315 run data modify storage galaxy:temp item.tag.CustomModelData set value 20406
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 316..360 run data modify storage galaxy:temp item.tag.CustomModelData set value 20407
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 361..405 run data modify storage galaxy:temp item.tag.CustomModelData set value 20408
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 406..450 run data modify storage galaxy:temp item.tag.CustomModelData set value 20409
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 451..495 run data modify storage galaxy:temp item.tag.CustomModelData set value 20410
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 496..540 run data modify storage galaxy:temp item.tag.CustomModelData set value 20411
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 541..585 run data modify storage galaxy:temp item.tag.CustomModelData set value 20412
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 586..630 run data modify storage galaxy:temp item.tag.CustomModelData set value 20413
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 631..675 run data modify storage galaxy:temp item.tag.CustomModelData set value 20414
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 676..720 run data modify storage galaxy:temp item.tag.CustomModelData set value 20415
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 721..765 run data modify storage galaxy:temp item.tag.CustomModelData set value 20416
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 766..810 run data modify storage galaxy:temp item.tag.CustomModelData set value 20417
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 811..855 run data modify storage galaxy:temp item.tag.CustomModelData set value 20418
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 856..900 run data modify storage galaxy:temp item.tag.CustomModelData set value 20419
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 901..945 run data modify storage galaxy:temp item.tag.CustomModelData set value 20420
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 946..990 run data modify storage galaxy:temp item.tag.CustomModelData set value 20421
execute if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 991..1000 run data modify storage galaxy:temp item.tag.CustomModelData set value 20422
execute if score #2 calcu_temp matches -1 run data modify storage galaxy:temp item.tag.CustomModelData set value 20423
