scoreboard players set @s MhPistolTemper 0
execute store result score @s MhPistolMaxTemp run data get entity @s SelectedItem.tag.temperMax
scoreboard players set @s MhPistolOverheat 0
execute store result score @s MhPistolCooling run data get entity @s SelectedItem.tag.cooling
execute store result score @s MhPistolCoolDly run data get entity @s SelectedItem.tag.coolingDelay
execute store result score @s MhPistolFireDly run data get entity @s SelectedItem.tag.fireDelay
