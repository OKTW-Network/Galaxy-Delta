execute if score @s sbldAttribute matches 1 store result score @s sbldAtbValue run scoreboard players get @s optPistolStyle
execute if score @s sbldAttribute matches 2 store result score @s sbldAtbValue run scoreboard players get @s optPistolDamage
execute if score @s sbldAttribute matches 3 store result score @s sbldAtbValue run scoreboard players get @s optPistolBltDist
execute if score @s sbldAttribute matches 4 store result score @s sbldAtbValue run scoreboard players get @s optPistolFireDly
execute if score @s sbldAttribute matches 5 store result score @s sbldAtbValue run scoreboard players get @s optPistolMaxTemp
execute if score @s sbldAttribute matches 6 store result score @s sbldAtbValue run scoreboard players get @s optPistolHeat
execute if score @s sbldAttribute matches 7 store result score @s sbldAtbValue run scoreboard players get @s optPistolCooling
execute if score @s sbldAttribute matches 8 store result score @s sbldAtbValue run scoreboard players get @s optPistolCoolDly
execute if score @s sbldAttribute matches 9 store result score @s sbldAtbValue run scoreboard players get @s optPistolBltSped
execute if score @s sbldAttribute matches 10 store result score @s sbldAtbValue run scoreboard players get @s optPistolBltOfst

execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run scoreboard players add @s sbldAtbValue 100
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players add @s sbldAtbValue 10
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players add @s sbldAtbValue 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players remove @s sbldAtbValue 100
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run scoreboard players remove @s sbldAtbValue 10
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run scoreboard players remove @s sbldAtbValue 1
function galaxy:recipe/super_builder-pistol/get-atb_value_limit
execute if score @s sbldAtbValue matches 1000.. run scoreboard players set @s sbldAtbValue 999
execute if score @s sbldAtbValue >= @s sbldPistolAtVMax store result score @s sbldAtbValue run scoreboard players get @s sbldPistolAtVMax
execute if score @s sbldAtbValue <= @s sbldPistolAtVMin store result score @s sbldAtbValue run scoreboard players get @s sbldPistolAtVMin
execute if score @s sbldAtbValue matches ..-1 run scoreboard players set @s sbldAtbValue 0

function galaxy:gui/super_builder-pistol/build-num_section

replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"+100\",\"italic\":false,\"color\":\"green\"}"},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.3 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"+10\",\"italic\":false,\"color\":\"green\"}"},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.4 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"+1\",\"italic\":false,\"color\":\"green\"}"},CustomModelData:10200,guiItem:1}
replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"-100\",\"italic\":false,\"color\":\"red\"}"},CustomModelData:10201,guiItem:1}
replaceitem block ~ ~ ~ container.21 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"-10\",\"italic\":false,\"color\":\"red\"}"},CustomModelData:10201,guiItem:1}
replaceitem block ~ ~ ~ container.22 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"-1\",\"italic\":false,\"color\":\"red\"}"},CustomModelData:10201,guiItem:1}

execute if score @s sbldAttribute matches 1 store result score @s optPistolStyle run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 2 store result score @s optPistolDamage run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 3 store result score @s optPistolBltDist run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 4 store result score @s optPistolFireDly run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 5 store result score @s optPistolMaxTemp run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 6 store result score @s optPistolHeat run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 7 store result score @s optPistolCooling run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 8 store result score @s optPistolCoolDly run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 9 store result score @s optPistolBltSped run scoreboard players get @s sbldAtbValue
execute if score @s sbldAttribute matches 10 store result score @s optPistolBltOfst run scoreboard players get @s sbldAtbValue

function galaxy:gui/super_builder-pistol/build-result
