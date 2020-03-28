scoreboard players operation #new_x.*.*-* Version = #galaxy_currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #galaxy_currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #galaxy_currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #galaxy_currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionX
scoreboard players operation #currently_*.x.*-* Version = @s VersionY
scoreboard players operation #currently_*.*.x-* Version = @s VersionZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionA
function cu:version/check

execute if score #change Version matches 1 run function galaxy:debug/remove-init_tag

scoreboard players operation @s VersionX = #galaxy_currently_version_x.*.*-* Meta
scoreboard players operation @s VersionY = #galaxy_currently_version_*.x.*-* Meta
scoreboard players operation @s VersionZ = #galaxy_currently_version_*.*.x-* Meta
scoreboard players operation @s VersionA = #galaxy_currently_version_*.*.*-x Meta
