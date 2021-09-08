scoreboard players operation #new_x.*.*-* Version = #galaxy$version_currently_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #galaxy$version_currently_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #galaxy$version_currently_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #galaxy$version_currently_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionGalaxyX
scoreboard players operation #currently_*.x.*-* Version = @s VersionGalaxyY
scoreboard players operation #currently_*.*.x-* Version = @s VersionGalaxyZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionGalaxyA
function cu:version/check

execute if score #change Version matches 1 run function galaxy:debug/clean_up-tag

scoreboard players operation @s VersionGalaxyX = #galaxy$version_currently_x.*.*-* Meta
scoreboard players operation @s VersionGalaxyY = #galaxy$version_currently_*.x.*-* Meta
scoreboard players operation @s VersionGalaxyZ = #galaxy$version_currently_*.*.x-* Meta
scoreboard players operation @s VersionGalaxyA = #galaxy$version_currently_*.*.*-x Meta
