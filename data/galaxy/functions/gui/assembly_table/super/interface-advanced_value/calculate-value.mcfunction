execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run scoreboard players add @s sbldValue 1000000
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players add @s sbldValue 100000
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players add @s sbldValue 10000
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run scoreboard players add @s sbldValue 1000
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players add @s sbldValue 100
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players add @s sbldValue 10
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run scoreboard players add @s sbldValue 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} run scoreboard players operation @s sbldValue *= #-1 num
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players remove @s sbldValue 1000000
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run scoreboard players remove @s sbldValue 100000
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run scoreboard players remove @s sbldValue 10000
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run scoreboard players remove @s sbldValue 1000
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run scoreboard players remove @s sbldValue 100
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run scoreboard players remove @s sbldValue 10
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run scoreboard players remove @s sbldValue 1
