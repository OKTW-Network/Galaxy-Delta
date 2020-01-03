execute if score @s MhPistolOverheat matches 1 run scoreboard players set @s reqPistolFire -10
execute if score @s FhPistolOverheat matches 1 run scoreboard players set @s reqPistolFire -10

execute if score @s reqPistolFire matches 2 run scoreboard players add @s pistolSwitch 1
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 2.. run scoreboard players set @s pistolSwitch 0

execute if score @s reqPistolFire matches 1 store result score @s MhPistolCooling run data get entity @s SelectedItem.tag.cooling
execute if score @s reqPistolFire matches 1 store result score @s MhPistolCoolDly run data get entity @s SelectedItem.tag.coolingDelay
execute if score @s reqPistolFire matches 1 store result score @s MhPistolMaxTemp run data get entity @s SelectedItem.tag.temperMax
execute if score @s reqPistolFire matches 1 store result score @s MhPistolHeat run data get entity @s SelectedItem.tag.fireHeat
execute if score @s reqPistolFire matches 1 store result score @s MhPistolFireDly run data get entity @s SelectedItem.tag.fireDelay
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 0 store result score @s MhPistolCooling run data get entity @s SelectedItem.tag.cooling
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 0 store result score @s MhPistolCoolDly run data get entity @s SelectedItem.tag.coolingDelay
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 0 store result score @s MhPistolMaxTemp run data get entity @s SelectedItem.tag.temperMax
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 0 store result score @s MhPistolHeat run data get entity @s SelectedItem.tag.fireHeat
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 0 store result score @s MhPistolFireDly run data get entity @s SelectedItem.tag.fireDelay
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 1 store result score @s FhPistolCooling run data get entity @s Inventory[{Slot:-106b}].tag.cooling
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 1 store result score @s FhPistolCoolDly run data get entity @s Inventory[{Slot:-106b}].tag.coolingDelay
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 1 store result score @s FhPistolMaxTemp run data get entity @s Inventory[{Slot:-106b}].tag.temperMax
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 1 store result score @s FhPistolHeat run data get entity @s Inventory[{Slot:-106b}].tag.fireHeat
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 1 store result score @s FhPistolFireDly run data get entity @s Inventory[{Slot:-106b}].tag.fireDelay
execute if score @s reqPistolFire matches 3 store result score @s MhPistolCooling run data get entity @s SelectedItem.tag.cooling
execute if score @s reqPistolFire matches 3 store result score @s MhPistolCoolDly run data get entity @s SelectedItem.tag.coolingDelay
execute if score @s reqPistolFire matches 3 store result score @s MhPistolMaxTemp run data get entity @s SelectedItem.tag.temperMax
execute if score @s reqPistolFire matches 3 store result score @s MhPistolHeat run data get entity @s SelectedItem.tag.fireHeat
execute if score @s reqPistolFire matches 3 store result score @s MhPistolFireDly run data get entity @s SelectedItem.tag.fireDelay
execute if score @s reqPistolFire matches 3 store result score @s FhPistolCooling run data get entity @s Inventory[{Slot:-106b}].tag.cooling
execute if score @s reqPistolFire matches 3 store result score @s FhPistolCoolDly run data get entity @s Inventory[{Slot:-106b}].tag.coolingDelay
execute if score @s reqPistolFire matches 3 store result score @s FhPistolMaxTemp run data get entity @s Inventory[{Slot:-106b}].tag.temperMax
execute if score @s reqPistolFire matches 3 store result score @s FhPistolHeat run data get entity @s Inventory[{Slot:-106b}].tag.fireHeat
execute if score @s reqPistolFire matches 3 store result score @s FhPistolFireDly run data get entity @s Inventory[{Slot:-106b}].tag.fireDelay
execute if score @s reqPistolFire matches 2..3 if score @s MhPistolFireDly >= @s FhPistolFireDly run scoreboard players operation @s pistolFireDly = @s MhPistolFireDly
execute if score @s reqPistolFire matches 2..3 if score @s MhPistolFireDly < @s FhPistolFireDly run scoreboard players operation @s pistolFireDly = @s FhPistolFireDly
execute if score @s reqPistolFire matches 1 run scoreboard players operation @s pistolFireDly = @s MhPistolFireDly

execute if score @s reqPistolFire matches 1 at @s run function galaxy:weapon/pistol/bullet/summon-hand_main
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 0 at @s run function galaxy:weapon/pistol/bullet/summon-hand_main
execute if score @s reqPistolFire matches 2 if score @s pistolSwitch matches 1 at @s run function galaxy:weapon/pistol/bullet/summon-hand_off
execute if score @s reqPistolFire matches 3 at @s run function galaxy:weapon/pistol/bullet/summon-hand_main
execute if score @s reqPistolFire matches 3 at @s run function galaxy:weapon/pistol/bullet/summon-hand_off

# execute as @a[scores={reqPistolFire=-10}] run say nope
execute as @a[scores={reqPistolFire=-10}] run scoreboard players set @s reqPistolFire 0
