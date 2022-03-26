scoreboard players reset @s galaxy.tool.wrench.UUID.using0
scoreboard players reset @s galaxy.tool.wrench.UUID.using1
scoreboard players reset @s galaxy.tool.wrench.UUID.using2
scoreboard players reset @s galaxy.tool.wrench.UUID.using3
execute if entity @s[tag=galaxy._tag.holdWrenchMainHand] run scoreboard players operation @s galaxy.tool.wrench.UUID.using0 = @s galaxy.tool.wrench.UUID.mainHand0
execute if entity @s[tag=galaxy._tag.holdWrenchMainHand] run scoreboard players operation @s galaxy.tool.wrench.UUID.using1 = @s galaxy.tool.wrench.UUID.mainHand1
execute if entity @s[tag=galaxy._tag.holdWrenchMainHand] run scoreboard players operation @s galaxy.tool.wrench.UUID.using2 = @s galaxy.tool.wrench.UUID.mainHand2
execute if entity @s[tag=galaxy._tag.holdWrenchMainHand] run scoreboard players operation @s galaxy.tool.wrench.UUID.using3 = @s galaxy.tool.wrench.UUID.mainHand3
execute if entity @s[tag=!galaxy._tag.holdWrenchMainHand,tag=galaxy._tag.holdWrenchOffHand] run scoreboard players operation @s galaxy.tool.wrench.UUID.using0 = @s galaxy.tool.wrench.UUID.offHand0
execute if entity @s[tag=!galaxy._tag.holdWrenchMainHand,tag=galaxy._tag.holdWrenchOffHand] run scoreboard players operation @s galaxy.tool.wrench.UUID.using1 = @s galaxy.tool.wrench.UUID.offHand1
execute if entity @s[tag=!galaxy._tag.holdWrenchMainHand,tag=galaxy._tag.holdWrenchOffHand] run scoreboard players operation @s galaxy.tool.wrench.UUID.using2 = @s galaxy.tool.wrench.UUID.offHand2
execute if entity @s[tag=!galaxy._tag.holdWrenchMainHand,tag=galaxy._tag.holdWrenchOffHand] run scoreboard players operation @s galaxy.tool.wrench.UUID.using3 = @s galaxy.tool.wrench.UUID.offHand3

tag @s remove galaxy._tag.useWrenchMainHand
tag @s remove galaxy._tag.useWrenchOffHand

execute if entity @s[tag=galaxy._tag.holdWrenchMainHand] run tag @s add galaxy._tag.useWrenchMainHand
execute if entity @s[tag=!galaxy._tag.holdWrenchMainHand,tag=galaxy._tag.holdWrenchOffHand] run tag @s add galaxy._tag.useWrenchOffHand
