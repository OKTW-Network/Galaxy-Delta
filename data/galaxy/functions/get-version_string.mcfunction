function galaxy:version

scoreboard players operation #currently_x.*.*-* Version = #galaxy$version_x.*.*-* Meta
scoreboard players operation #currently_*.x.*-* Version = #galaxy$version_*.x.*-* Meta
scoreboard players operation #currently_*.*.x-* Version = #galaxy$version_*.*.x-* Meta
scoreboard players operation #currently_*.*.*-x Version = #galaxy$version_*.*.*-x Meta

function cu:version/build-currently

data modify storage cu:string toStatic.input set value '{"nbt":"version.currently","storage":"cu:resources","interpret":true}'
function cu:string/convert_to-static
data modify storage galaxy:version currently set from storage cu:string toStatic.result
