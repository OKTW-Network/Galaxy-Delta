execute if score @s sbldAttribute matches 0 store result score @s sbldAtbValue run scoreboard players get @s optType
execute if score @s sbldAttribute matches 1 store result score @s sbldAtbValue run scoreboard players get @s optStyle
execute if score @s sbldAttribute matches 2 store result score @s sbldAtbValue run scoreboard players get @s optPjDamage
execute if score @s sbldAttribute matches 3 store result score @s sbldAtbValue run scoreboard players get @s optDelay
execute if score @s sbldAttribute matches 4 store result score @s sbldAtbValue run scoreboard players get @s optPjDistance
execute if score @s sbldAttribute matches 5 store result score @s sbldAtbValue run scoreboard players get @s optTemperMax
execute if score @s sbldAttribute matches 6 store result score @s sbldAtbValue run scoreboard players get @s optHeat
execute if score @s sbldAttribute matches 7 store result score @s sbldAtbValue run scoreboard players get @s optCooling
execute if score @s sbldAttribute matches 8 store result score @s sbldAtbValue run scoreboard players get @s optCoolingDly
execute if score @s sbldAttribute matches 9 store result score @s sbldAtbValue run scoreboard players get @s optPjSpeed
execute if score @s sbldAttribute matches 10 store result score @s sbldAtbValue run scoreboard players get @s optPjOffset

execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run scoreboard players add @s sbldAtbValue 100
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players add @s sbldAtbValue 10
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players add @s sbldAtbValue 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players remove @s sbldAtbValue 100
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run scoreboard players remove @s sbldAtbValue 10
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run scoreboard players remove @s sbldAtbValue 1
function galaxy:recipe/super_builder-gun/get-atb_value_limit
execute if score @s sbldAtbValue matches 1000.. run scoreboard players set @s sbldAtbValue 999
execute if score @s sbldAtbValue >= @s sbldAtbValueMax store result score @s sbldAtbValue run scoreboard players get @s sbldAtbValueMax
execute if score @s sbldAtbValue <= @s sbldAtbValueMin store result score @s sbldAtbValue run scoreboard players get @s sbldAtbValueMin
execute if score @s sbldAtbValue matches ..-1 run scoreboard players set @s sbldAtbValue 0

function galaxy:gui/super_builder-gun/build-num_section

replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"+100","italic":false,"color":"green"}'},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.3 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"+10","italic":false,"color":"green"}'},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.4 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"+1","italic":false,"color":"green"}'},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"-100","italic":false,"color":"red"}'},CustomModelData:10201,guiItem:1}
replaceitem block ~ ~ ~ container.21 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"-10","italic":false,"color":"red"}'},CustomModelData:10201,guiItem:1}
replaceitem block ~ ~ ~ container.22 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"-1","italic":false,"color":"red"}'},CustomModelData:10201,guiItem:1}

execute if score @s sbldAttribute matches 0 store result score @s optType run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 1 store result score @s optStyle run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 2 store result score @s optPjDamage run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 3 store result score @s optDelay run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 4 store result score @s optPjDistance run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 5 store result score @s optTemperMax run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 6 store result score @s optHeat run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 7 store result score @s optCooling run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 8 store result score @s optCoolingDly run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 9 store result score @s optPjSpeed run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 10 store result score @s optPjOffset run scoreboard players get @s sbldAtbValue

function galaxy:gui/super_builder-gun/build-result
