# gun firing
execute if score #gun_fire_single Config matches 1 run scoreboard players add @s[predicate=galaxy:weapon/hand_main-gun,predicate=!galaxy:weapon/hand_off-gun,scores={gunDelay=0}] reqGunFire 1
execute if score #gun_fire_switch Config matches 1 run scoreboard players add @s[predicate=galaxy:weapon/hand_main-gun,predicate=galaxy:weapon/hand_off-gun,scores={gunDelay=0},nbt=!{SelectedItem:{tag:{syncTrigger:1}}}] reqGunFire 2
execute if score #gun_fire_double Config matches 1 run scoreboard players add @s[predicate=galaxy:weapon/hand_main-gun,predicate=galaxy:weapon/hand_off-gun,scores={gunDelay=0},nbt={SelectedItem:{tag:{syncTrigger:1}}}] reqGunFire 3

execute if score @s reqGunFire matches 1.. run function galaxy:weapon/gun/fire
scoreboard players set @s[scores={reqGunFire=1..}] reqGunFire 0
