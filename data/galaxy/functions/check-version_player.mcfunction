scoreboard players operation #new_x.*.*-* Version = #galaxy_version_currently_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #galaxy_version_currently_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #galaxy_version_currently_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #galaxy_version_currently_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionGalaxyX
scoreboard players operation #currently_*.x.*-* Version = @s VersionGalaxyY
scoreboard players operation #currently_*.*.x-* Version = @s VersionGalaxyZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionGalaxyA
function cu:version/check

scoreboard players operation @s VersionGalaxyX = #galaxy_version_currently_x.*.*-* Meta
scoreboard players operation @s VersionGalaxyY = #galaxy_version_currently_*.x.*-* Meta
scoreboard players operation @s VersionGalaxyZ = #galaxy_version_currently_*.*.x-* Meta
scoreboard players operation @s VersionGalaxyA = #galaxy_version_currently_*.*.*-x Meta
