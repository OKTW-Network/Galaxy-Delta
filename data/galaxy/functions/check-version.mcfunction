function galaxy:version

scoreboard players operation #new_x.*.*-* Version = #galaxy$version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #galaxy$version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #galaxy$version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #galaxy$version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = #galaxy$version_currently_x.*.*-* Meta
scoreboard players operation #currently_*.x.*-* Version = #galaxy$version_currently_*.x.*-* Meta
scoreboard players operation #currently_*.*.x-* Version = #galaxy$version_currently_*.*.x-* Meta
scoreboard players operation #currently_*.*.*-x Version = #galaxy$version_currently_*.*.*-x Meta
function cu:version/check

function cu:version/build-new
function cu:version/build-currently
function cu:version/build-relation

execute if score #none Version matches 1 if score #galaxy$print_version Config matches 1..2 run tellraw @a {"translate":"%s Version: %s","color":"reset","with":[{"text":"[Galaxy]:","color":"yellow","bold":true},{"nbt":"version.new","storage":"cu:resources","interpret":true}]}
execute if score #change Version matches 1 if score #galaxy$print_version Config matches 1..2 run tellraw @a {"translate":"%s Version: %s %s %s","color":"reset","with":[{"text":"[Galaxy]:","color":"yellow","bold":true},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"nbt":"version.relation","storage":"cu:resources","interpret":true},{"nbt":"version.new","storage":"cu:resources","interpret":true}]}
execute if score #change Version matches 0 if score #none Version matches 0 if score #galaxy$print_version Config matches 2 run tellraw @a {"translate":"%s Version: %s","color":"reset","with":[{"text":"[Galaxy]:","color":"yellow","bold":true},{"nbt":"version.new","storage":"cu:resources","interpret":true}]}

data modify storage cu:string toStatic.input set value '{"nbt":"version.new","storage":"cu:resources","interpret":true}'
function cu:string/convert_to-static
data modify storage galaxy:version currently set from storage cu:string toStatic.result

scoreboard players operation #galaxy$version_currently_pre Meta = #pre Version

scoreboard players operation #galaxy$version_currently_x.*.*-* Meta = #galaxy$version_x.*.*-* Meta
scoreboard players operation #galaxy$version_currently_*.x.*-* Meta = #galaxy$version_*.x.*-* Meta
scoreboard players operation #galaxy$version_currently_*.*.x-* Meta = #galaxy$version_*.*.x-* Meta
scoreboard players operation #galaxy$version_currently_*.*.*-x Meta = #galaxy$version_*.*.*-x Meta
