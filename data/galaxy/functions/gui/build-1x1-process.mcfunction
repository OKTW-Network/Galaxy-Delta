data modify storage galaxy:temp item set value {Slot:13b,id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"translate":"gui.process.idle","color":"gray","italic":false}'},CustomModelData:100,guiItem:1}}
execute store result storage galaxy:temp item.Slot byte 1 run scoreboard players get #1 calcu_temp

execute if score #2 calcu_temp matches 1 run data modify storage galaxy:temp item.tag.display.Name set value '{"translate":"gui.process.working","color":"green","italic":false}'
execute if score #2 calcu_temp matches -1 run data modify storage galaxy:temp item.tag.display.Name set value '{"translate":"gui.process.invalid","color":"red","italic":false}'
