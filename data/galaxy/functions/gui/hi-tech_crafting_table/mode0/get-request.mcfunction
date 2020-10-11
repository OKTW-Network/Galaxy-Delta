execute if score @s htctRcpeSlotMax matches 1.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players set @s reqRcpHTct 1
execute if score @s htctRcpeSlotMax matches 2.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players set @s reqRcpHTct 2
execute if score @s htctRcpeSlotMax matches 3.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run scoreboard players set @s reqRcpHTct 3
execute if score @s htctRcpeSlotMax matches 4.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set @s reqRcpHTct 4
execute if score @s htctRcpeSlotMax matches 5.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players set @s reqRcpHTct 5
execute if score @s htctRcpeSlotMax matches 6.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run scoreboard players set @s reqRcpHTct 6
execute if score @s htctRcpeSlotMax matches 7.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run scoreboard players set @s reqRcpHTct 7
execute if score @s htctRcpeSlotMax matches 8.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run scoreboard players set @s reqRcpHTct 8
execute if score @s htctRcpeSlotMax matches 9.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run scoreboard players set @s reqRcpHTct 9
execute if score @s htctRcpeSlotMax matches 10.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run scoreboard players set @s reqRcpHTct 10
execute if score @s htctRcpeSlotMax matches 11.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run scoreboard players set @s reqRcpHTct 11
execute if score @s htctRcpeSlotMax matches 12.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run scoreboard players set @s reqRcpHTct 12
execute if score @s htctRcpeSlotMax matches 13.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run scoreboard players set @s reqRcpHTct 13
execute if score @s htctRcpeSlotMax matches 14.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run scoreboard players set @s reqRcpHTct 14
execute if score @s htctRcpeSlotMax matches 15.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run scoreboard players set @s reqRcpHTct 15

scoreboard players operation @s reqRcpHTctPage = @s reqRcpHTct

scoreboard players operation #1 calcu_temp = @s htctListPage
scoreboard players operation #1 calcu_temp -= #1 num
scoreboard players operation #1 calcu_temp *= #15 num
scoreboard players operation @s reqRcpHTct += #1 calcu_temp
