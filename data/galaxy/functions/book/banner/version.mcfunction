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
data modify storage cu:value list.duplicate.input set value " "
scoreboard players operation #value.list.duplicate.count cu = #1 temp
function cu:value/list/duplicate/main
data modify storage cu:value string.static.input set value '{"storage":"cu:value","nbt":"list.duplicate.result","interpret":true}'
function cu:value/string/static
data modify storage galaxy:book bannerObj.versionSpace set from storage cu:value string.static.result
data modify storage galaxy:book bannerObj.version set value '[{"storage":"galaxy:book","nbt":"bannerObj.versionSpace","interpret":true},{"translate":"v%s","with":[{"storage":"meta:galaxy","nbt":"current_version.string","interpret":true}],"clickEvent":{"action":"run_command","value":"/trigger galaxy.book.refresh.galaxy_delta add 1"},"color":"gray","underlined":true,"hoverEvent":{"action":"show_text","contents":{"translate":"book.tooltip.click_event.refresh_content","color":"gray"}}}]'
