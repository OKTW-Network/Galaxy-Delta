scoreboard players set #1 temp 0

scoreboard players operation #value.digit.length.input cu = #galaxy$version_current.x Meta
scoreboard players set #value.digit.length.ignoreNegativeMark cu 1
function cu:value/digit/length/main
scoreboard players operation #1 temp += #value.digit.length.result cu

scoreboard players operation #value.digit.length.input cu = #galaxy$version_current.y Meta
scoreboard players set #value.digit.length.ignoreNegativeMark cu 1
function cu:value/digit/length/main
scoreboard players operation #1 temp += #value.digit.length.result cu

scoreboard players operation #value.digit.length.input cu = #galaxy$version_current.z Meta
scoreboard players set #value.digit.length.ignoreNegativeMark cu 1
function cu:value/digit/length/main
scoreboard players operation #1 temp += #value.digit.length.result cu

execute unless data storage meta:galaxy current_version{t:''} store result score #2 temp run data get storage meta:galaxy current_version.t
execute unless data storage meta:galaxy current_version{t:''} run scoreboard players operation #1 temp += #2 temp
execute unless data storage meta:galaxy current_version{t:''} run scoreboard players add #1 temp 1

scoreboard players add #1 temp 1
scoreboard players operation #1 temp *= #3 num
scoreboard players add #1 temp 2
scoreboard players remove #1 temp 57
scoreboard players operation #1 temp *= #-1 num
scoreboard players operation #1 temp *= #10 num
execute store result score #2 temp run scoreboard players operation #1 temp /= #4 num
scoreboard players operation #1 temp /= #10 num
scoreboard players operation #2 temp %= #10 num
execute if score #2 temp matches 6.. run scoreboard players add #1 temp 1
data modify storage galaxy:temp string set value []
execute if score #1 temp matches 1.. run function galaxy:book/center_space
data modify storage cu:value string.static.input set value '{"nbt":"string","storage":"galaxy:temp","interpret":true}'
function cu:value/string/static
data modify storage galaxy:book bannerObj.versionSpace set from storage cu:value string.static.result
data modify storage galaxy:book bannerObj.version set value '["",{"nbt":"bannerObj.versionSpace","storage":"galaxy:book","interpret":true},{"translate":"v%s","with":[{"nbt":"current_version.string","storage":"meta:galaxy","interpret":true}],"clickEvent":{"action":"run_command","value":"/trigger galaxy.book.triggerUpdate.galaxy_delta add 1"},"color":"gray","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"(click to refresh)","color":"gray"}}}]'
