scoreboard players set @a[scores={isSneak=0,SneakCount=1..}] isSneak 1
scoreboard players set @a[scores={isSneak=1,SneakCount=..-1}] SneakCount 1
execute as @a[scores={isSneak=1,isSneakComp=0}] run scoreboard players operation @s SneakComp1 = @s SneakCount
scoreboard players set @a[scores={isSneak=1,isSneakComp=0}] isSneakInit 1
scoreboard players set @a[scores={isSneak=1,isSneakComp=0}] isSneakComp 1
execute as @a[scores={isSneak=1,isSneakComp=1,isSneakInit=0}] run scoreboard players operation @s SneakComp1 -= @s SneakCount
scoreboard players set @a[scores={isSneak=1,isSneakComp=1,SneakComp1=0..,isSneakInit=0}] SneakCount 0
scoreboard players set @a[scores={isSneakComp=1,SneakComp1=0..,isSneakInit=0}] isSneakComp 0
scoreboard players set @a[scores={isSneak=1,SneakComp1=0..,isSneakInit=0}] isSneak 0
execute as @a[scores={isSneak=1,isSneakComp=1}] run scoreboard players operation @s SneakComp1 = @s SneakCount
scoreboard players set @a[scores={isSneak=1,isSneakInit=1}] isSneakInit 0
