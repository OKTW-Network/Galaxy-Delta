data modify storage galaxy:temp item set value {Slot:11b,id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20500,guiItem:1}}
execute store result storage galaxy:temp item.Slot byte 1 run scoreboard players get #1 calcu_temp

execute if score #2 calcu_temp matches 924..1000 run data modify storage galaxy:temp item.tag.CustomModelData set value 20513
execute if score #2 calcu_temp matches 847..923 run data modify storage galaxy:temp item.tag.CustomModelData set value 20512
execute if score #2 calcu_temp matches 770..846 run data modify storage galaxy:temp item.tag.CustomModelData set value 20511
execute if score #2 calcu_temp matches 693..769 run data modify storage galaxy:temp item.tag.CustomModelData set value 20510
execute if score #2 calcu_temp matches 616..692 run data modify storage galaxy:temp item.tag.CustomModelData set value 20509
execute if score #2 calcu_temp matches 538..615 run data modify storage galaxy:temp item.tag.CustomModelData set value 20508
execute if score #2 calcu_temp matches 462..538 run data modify storage galaxy:temp item.tag.CustomModelData set value 20507
execute if score #2 calcu_temp matches 385..461 run data modify storage galaxy:temp item.tag.CustomModelData set value 20506
execute if score #2 calcu_temp matches 308..384 run data modify storage galaxy:temp item.tag.CustomModelData set value 20505
execute if score #2 calcu_temp matches 231..307 run data modify storage galaxy:temp item.tag.CustomModelData set value 20504
execute if score #2 calcu_temp matches 154..230 run data modify storage galaxy:temp item.tag.CustomModelData set value 20503
execute if score #2 calcu_temp matches 77..153 run data modify storage galaxy:temp item.tag.CustomModelData set value 20502
execute if score #2 calcu_temp matches 1..76 run data modify storage galaxy:temp item.tag.CustomModelData set value 20501
