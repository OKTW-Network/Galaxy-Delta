tag @s[tag=!galaxy._tag.wrench.usingOnBlock] add galaxy._tag.wrench.usingOnBlock

execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-1 unless entity @e[tag=galaxy.dummy.wrenchAnchor,distance=..0.05] run function galaxy:tool/wrench/used_on_block/anchor/summon
execute at @e[tag=galaxy._tag.ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-1 run tag @e[tag=galaxy.dummy.wrenchAnchor,distance=..0.05] add galaxy._tag.ThisWrenchAnchor

scoreboard players set #tool.wrench.used_on_block.checkUseNewPosition galaxy 0
execute unless score @s galaxy.tool.wrench.block.posX = @e[tag=galaxy._tag.ThisWrenchAnchor,limit=1] galaxy.tool.wrench.block.posX run scoreboard players set #tool.wrench.used_on_block.checkUseNewPosition galaxy 1
execute unless score @s galaxy.tool.wrench.block.posY = @e[tag=galaxy._tag.ThisWrenchAnchor,limit=1] galaxy.tool.wrench.block.posY run scoreboard players set #tool.wrench.used_on_block.checkUseNewPosition galaxy 1
execute unless score @s galaxy.tool.wrench.block.posZ = @e[tag=galaxy._tag.ThisWrenchAnchor,limit=1] galaxy.tool.wrench.block.posZ run scoreboard players set #tool.wrench.used_on_block.checkUseNewPosition galaxy 1
execute if score #tool.wrench.used_on_block.checkUseNewPosition galaxy matches 1 run function galaxy:tool/wrench/used_on_block/user/store_block_position
execute if score #tool.wrench.used_on_block.checkUseNewPosition galaxy matches 1 run function galaxy:tool/wrench/used_on_block/anchor/kill_unused/main
scoreboard players reset #tool.wrench.used_on_block.checkUseNewPosition galaxy

execute as @e[tag=galaxy._tag.ThisWrench] at @e[tag=galaxy._tag.ThisWrenchAnchor] run function galaxy:tool/wrench/block/main

tag @e[tag=galaxy._tag.ThisWrenchAnchor] remove galaxy._tag.ThisWrenchAnchor
