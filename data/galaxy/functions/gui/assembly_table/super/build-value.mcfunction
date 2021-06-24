item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20610,guiItem:1}
item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20610,guiItem:1}
item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20610,guiItem:1}
execute if score @s sbldValue matches 100..999 run scoreboard players set #3 calcu_temp 3
execute if score @s sbldValue matches 10..99 run scoreboard players set #3 calcu_temp 2
execute if score @s sbldValue matches 0..9 run scoreboard players set #3 calcu_temp 1
execute store result score #1 calcu_temp run scoreboard players get @s sbldValue
execute if score #3 calcu_temp matches 1..3 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 1..3 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 0 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"0","italic":false}'},CustomModelData:20600,guiItem:1}
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 1 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"1","italic":false}'},CustomModelData:20601,guiItem:1}
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 2 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"2","italic":false}'},CustomModelData:20602,guiItem:1}
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 3 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"3","italic":false}'},CustomModelData:20603,guiItem:1}
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 4 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"4","italic":false}'},CustomModelData:20604,guiItem:1}
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 5 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"5","italic":false}'},CustomModelData:20605,guiItem:1}
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 6 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"6","italic":false}'},CustomModelData:20606,guiItem:1}
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 7 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"7","italic":false}'},CustomModelData:20607,guiItem:1}
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 8 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"8","italic":false}'},CustomModelData:20608,guiItem:1}
execute if score #3 calcu_temp matches 1..3 if score #2 calcu_temp matches 9 run item replace block ~ ~ ~ container.14 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"9","italic":false}'},CustomModelData:20609,guiItem:1}
execute if score #3 calcu_temp matches 2..3 run scoreboard players operation #1 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 2..3 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 2..3 run scoreboard players operation #2 calcu_temp %= #10 num
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 0 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"0","italic":false}'},CustomModelData:20600,guiItem:1}
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 1 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"1","italic":false}'},CustomModelData:20601,guiItem:1}
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 2 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"2","italic":false}'},CustomModelData:20602,guiItem:1}
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 3 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"3","italic":false}'},CustomModelData:20603,guiItem:1}
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 4 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"4","italic":false}'},CustomModelData:20604,guiItem:1}
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 5 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"5","italic":false}'},CustomModelData:20605,guiItem:1}
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 6 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"6","italic":false}'},CustomModelData:20606,guiItem:1}
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 7 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"7","italic":false}'},CustomModelData:20607,guiItem:1}
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 8 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"8","italic":false}'},CustomModelData:20608,guiItem:1}
execute if score #3 calcu_temp matches 2..3 if score #2 calcu_temp matches 9 run item replace block ~ ~ ~ container.13 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"9","italic":false}'},CustomModelData:20609,guiItem:1}
execute if score #3 calcu_temp matches 3 run scoreboard players operation #2 calcu_temp = #1 calcu_temp
execute if score #3 calcu_temp matches 3 run scoreboard players operation #2 calcu_temp /= #10 num
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 0 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"0","italic":false}'},CustomModelData:20600,guiItem:1}
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 1 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"1","italic":false}'},CustomModelData:20601,guiItem:1}
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 2 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"2","italic":false}'},CustomModelData:20602,guiItem:1}
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 3 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"3","italic":false}'},CustomModelData:20603,guiItem:1}
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 4 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"4","italic":false}'},CustomModelData:20604,guiItem:1}
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 5 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"5","italic":false}'},CustomModelData:20605,guiItem:1}
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 6 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"6","italic":false}'},CustomModelData:20606,guiItem:1}
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 7 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"7","italic":false}'},CustomModelData:20607,guiItem:1}
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 8 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"8","italic":false}'},CustomModelData:20608,guiItem:1}
execute if score #3 calcu_temp matches 3 if score #2 calcu_temp matches 9 run item replace block ~ ~ ~ container.12 with minecraft:white_stained_glass_pane{display:{Name:'{"text":"9","italic":false}'},CustomModelData:20609,guiItem:1}
