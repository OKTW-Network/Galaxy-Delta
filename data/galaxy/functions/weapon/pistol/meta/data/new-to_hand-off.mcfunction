scoreboard players set @s FhPistolTemper 0
execute store result score @s FhPistolMaxTemp run data get entity @s Inventory[{Slot:-106b}].tag.temperMax
scoreboard players set @s FhPistolOverheat 0
execute store result score @s FhPistolCooling run data get entity @s Inventory[{Slot:-106b}].tag.cooling
execute store result score @s FhPistolCoolDly run data get entity @s Inventory[{Slot:-106b}].tag.coolingDelay
execute store result score @s FhPistolFireDly run data get entity @s Inventory[{Slot:-106b}].tag.fireDelay
