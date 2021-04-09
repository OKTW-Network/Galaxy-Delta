scoreboard players set #1 calcu_temp 0

scoreboard players operation #input lengthDigit = #galaxy$version_currently_x.*.*-* Meta
scoreboard players set #ignoreNegative lengthDigit 1
function cu:length/digit
scoreboard players operation #1 calcu_temp += #result lengthDigit

scoreboard players operation #input lengthDigit = #galaxy$version_currently_*.x.*-* Meta
scoreboard players set #ignoreNegative lengthDigit 1
function cu:length/digit
scoreboard players operation #1 calcu_temp += #result lengthDigit

scoreboard players operation #input lengthDigit = #galaxy$version_currently_*.*.x-* Meta
scoreboard players set #ignoreNegative lengthDigit 1
function cu:length/digit
scoreboard players operation #1 calcu_temp += #result lengthDigit

execute if score #galaxy$version_currently_pre Meta matches 1 run scoreboard players operation #input lengthDigit = #galaxy$version_currently_*.*.*-x Meta
execute if score #galaxy$version_currently_pre Meta matches 1 run scoreboard players set #ignoreNegative lengthDigit 1
execute if score #galaxy$version_currently_pre Meta matches 1 run function cu:length/digit
execute if score #galaxy$version_currently_pre Meta matches 1 run scoreboard players operation #1 calcu_temp += #result lengthDigit
execute if score #galaxy$version_currently_pre Meta matches 1 run scoreboard players add #1 calcu_temp 4

scoreboard players add #1 calcu_temp 1
scoreboard players operation #1 calcu_temp *= #3 num
scoreboard players add #1 calcu_temp 2
scoreboard players remove #1 calcu_temp 57
scoreboard players operation #1 calcu_temp *= #-1 num
scoreboard players operation #1 calcu_temp *= #10 num
execute store result score #2 calcu_temp run scoreboard players operation #1 calcu_temp /= #4 num
scoreboard players operation #1 calcu_temp /= #10 num
scoreboard players operation #2 calcu_temp %= #10 num
execute if score #2 calcu_temp matches 6.. run scoreboard players add #1 calcu_temp 1
data modify storage galaxy:temp string set value []
execute if score #1 calcu_temp matches 1.. run function galaxy:book/center_space
data modify storage cu:string toStatic.input set value '{"nbt":"string","storage":"galaxy:temp","interpret":true}'
function cu:string/convert_to-static
data modify storage galaxy:book bannerObj.versionSpace set from storage cu:string toStatic.result
data modify storage galaxy:book bannerObj.version set value '["",{"nbt":"bannerObj.versionSpace","storage":"galaxy:book","interpret":true},{"translate":"v%s","with":[{"nbt":"currently","storage":"galaxy:version","interpret":true}],"clickEvent":{"action":"run_command","value":"/trigger bookGdUpdate add 1"},"color":"gray"}]'
