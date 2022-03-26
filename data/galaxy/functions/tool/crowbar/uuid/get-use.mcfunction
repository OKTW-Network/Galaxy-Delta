scoreboard players reset @s galaxy.tool.crowbar.UUID.using0
scoreboard players reset @s galaxy.tool.crowbar.UUID.using1
scoreboard players reset @s galaxy.tool.crowbar.UUID.using2
scoreboard players reset @s galaxy.tool.crowbar.UUID.using3
execute if entity @s[tag=galaxy._tag.holdCrowbarMainHand] run scoreboard players operation @s galaxy.tool.crowbar.UUID.using0 = @s galaxy.tool.crowbar.UUID.mainHand0
execute if entity @s[tag=galaxy._tag.holdCrowbarMainHand] run scoreboard players operation @s galaxy.tool.crowbar.UUID.using1 = @s galaxy.tool.crowbar.UUID.mainHand1
execute if entity @s[tag=galaxy._tag.holdCrowbarMainHand] run scoreboard players operation @s galaxy.tool.crowbar.UUID.using2 = @s galaxy.tool.crowbar.UUID.mainHand2
execute if entity @s[tag=galaxy._tag.holdCrowbarMainHand] run scoreboard players operation @s galaxy.tool.crowbar.UUID.using3 = @s galaxy.tool.crowbar.UUID.mainHand3
execute if entity @s[tag=!galaxy._tag.holdCrowbarMainHand,tag=galaxy._tag.holdCrowbarOffHand] run scoreboard players operation @s galaxy.tool.crowbar.UUID.using0 = @s galaxy.tool.crowbar.UUID.offHand0
execute if entity @s[tag=!galaxy._tag.holdCrowbarMainHand,tag=galaxy._tag.holdCrowbarOffHand] run scoreboard players operation @s galaxy.tool.crowbar.UUID.using1 = @s galaxy.tool.crowbar.UUID.offHand1
execute if entity @s[tag=!galaxy._tag.holdCrowbarMainHand,tag=galaxy._tag.holdCrowbarOffHand] run scoreboard players operation @s galaxy.tool.crowbar.UUID.using2 = @s galaxy.tool.crowbar.UUID.offHand2
execute if entity @s[tag=!galaxy._tag.holdCrowbarMainHand,tag=galaxy._tag.holdCrowbarOffHand] run scoreboard players operation @s galaxy.tool.crowbar.UUID.using3 = @s galaxy.tool.crowbar.UUID.offHand3

tag @s remove galaxy._tag.useCrowbarMainHand
tag @s remove galaxy._tag.useCrowbarOffHand
execute if entity @s[tag=galaxy._tag.holdCrowbarMainHand] run tag @s add galaxy._tag.useCrowbarMainHand
execute if entity @s[tag=!galaxy._tag.holdCrowbarMainHand,tag=galaxy._tag.holdCrowbarOffHand] run tag @s add galaxy._tag.useCrowbarOffHand
