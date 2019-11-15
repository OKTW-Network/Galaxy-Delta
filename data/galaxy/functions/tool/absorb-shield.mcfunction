# shield status
scoreboard players set @a haveShield 0
execute as @a store result score @s haveShield run execute if data entity @s Inventory[].tag.shieldProjector
execute as @a[scores={haveShield=0,shieldStatus=1}] run tag @s add delShieldEffect
execute as @a[scores={haveShield=0}] run scoreboard players set @s shieldStatus 0
execute as @a[scores={haveShield=1}] run scoreboard players set @s shieldStatus 1
execute as @a[scores={haveShield=2..,shieldStatus=0}] run tag @s add delShieldEffect
execute as @a[scores={haveShield=2..,shieldStatus=1}] run tag @s add delShieldEffect
execute as @a[scores={haveShield=2..}] run scoreboard players set @s shieldStatus -10

# multi shield error
execute as @a[scores={errMultiShield=1,shieldStatus=0..1}] run scoreboard players set @s errMultiShield 0
execute as @a[scores={errMultiShield=0,shieldStatus=-10}] run scoreboard players set @s errMultiShield 2
execute as @a[scores={errMultiShield=2}] run tellraw @s {"translate":"warning.multi_shield","color":"red"}
execute as @a[scores={errMultiShield=2}] run scoreboard players set @s errMultiShield 1
execute as @a[scores={errMultiShield=1}] if score #hud_shield_projector Config matches 1 run title @s actionbar {"translate":"warning.shield_disable","color":"dark_red"}

# cooldown
execute as @a run scoreboard players operation @s dmgTotal += @s dmgAbsorb
execute as @a run scoreboard players operation @s dmgTotal += @s dmgTake
execute as @a run scoreboard players operation @s dmgAbsorb /= #static_10 numeric
execute as @a[scores={dmgTotal=10..}] run tag @s add getDmg
execute as @a[scores={shieldStatus=1},tag=getDmg] run scoreboard players operation @s shieldHealthy -= @s dmgAbsorb
execute as @a[scores={shieldStatus=1,shieldHealthy=..-1},tag=getDmg] run scoreboard players set @s shieldHealthy 0
execute as @a[scores={shieldStatus=1},tag=getDmg] store result score @s cdShield run scoreboard players get #shield_regen_cd Config
execute as @a[scores={shieldStatus=1,cdShield=1..},tag=!getDmg] run scoreboard players remove @e[scores={cdShield=1..}] cdShield 1
execute as @a[scores={shieldStatus=1},tag=getDmg] run scoreboard players remove @e[scores={cdShield=1..}] cdShield 1
execute as @a[scores={shieldStatus=1},tag=getDmg] run scoreboard players set @s delayShield 0
execute as @a[scores={shieldStatus=1},tag=getDmg] run scoreboard players set @s shieldFull 0
execute as @a[tag=getDmg] run scoreboard players set @s dmgTotal 0
execute as @a[tag=getDmg] run scoreboard players set @s dmgAbsorb 0
execute as @a[tag=getDmg] run scoreboard players set @s dmgTake 0
execute as @a[tag=getDmg] run tag @s remove getDmg

# shield healthy
scoreboard players remove @a[scores={shieldStatus=1,cdShield=0,delayShield=1..,shieldFull=0}] delayShield 1
scoreboard players add @a[scores={shieldStatus=1,cdShield=0,delayShield=0,shieldFull=0}] shieldHealthy 1
# execute as @a[scores={shieldStatus=1,cdShield=0,delayShield=0,shieldFull=0}] if score @s shieldHealthy >= #shield_capacity_max Config run scoreboard players set @s shieldFull 1
execute as @a[scores={shieldStatus=1,cdShield=0,delayShield=0}] if score @s shieldHealthy matches 21.. run scoreboard players set @s shieldHealthy 20
execute as @a[scores={shieldStatus=1,cdShield=0,delayShield=0}] if score @s shieldHealthy matches 20 run scoreboard players set @s shieldFull 1
scoreboard players operation @a[scores={shieldStatus=1,cdShield=0,delayShield=0,shieldFull=0}] delayShield = #shield_regen_speed Config
execute as @a if score @s delayShield = #shield_regen_speed Config run scoreboard players operation @s delayShield /= #static_4 numeric

# shield effect
effect clear @a[scores={shieldStatus=1,shieldHealthy=4..7}] minecraft:absorption
effect give @a[scores={shieldStatus=1,shieldHealthy=4..7}] minecraft:absorption 999999 0 true
effect clear @a[scores={shieldStatus=1,shieldHealthy=8..11}] minecraft:absorption
effect give @a[scores={shieldStatus=1,shieldHealthy=8..11}] minecraft:absorption 999999 1 true
effect clear @a[scores={shieldStatus=1,shieldHealthy=12..15}] minecraft:absorption
effect give @a[scores={shieldStatus=1,shieldHealthy=12..15}] minecraft:absorption 999999 2 true
effect clear @a[scores={shieldStatus=1,shieldHealthy=16..19}] minecraft:absorption
effect give @a[scores={shieldStatus=1,shieldHealthy=16..19}] minecraft:absorption 999999 3 true
effect clear @a[scores={shieldStatus=1,shieldHealthy=20}] minecraft:absorption
effect give @a[scores={shieldStatus=1,shieldHealthy=20}] minecraft:absorption 999999 4 true
effect clear @a[tag=delShieldEffect] minecraft:absorption
scoreboard players set @a[tag=delShieldEffect] shieldHealthy 0
scoreboard players set @a[tag=delShieldEffect] delayShield 0
scoreboard players set @a[tag=delShieldEffect] shieldFull 0
scoreboard players set @a[tag=delShieldEffect] cdShield 0
tag @a[tag=delShieldEffect] remove delShieldEffect
