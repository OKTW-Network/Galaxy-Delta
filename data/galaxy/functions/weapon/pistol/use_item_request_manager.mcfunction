# pistol firing
execute if score #pistol_fire_single Config matches 1 run scoreboard players add @s[predicate=galaxy:weapon/hand_main-pistol,scores={pistolFireDly=0}] reqPistolFire 1
execute if score #pistol_fire_switch Config matches 1 run scoreboard players add @s[predicate=galaxy:weapon/hand_main-pistol,predicate=galaxy:weapon/hand_off-pistol,scores={pistolFireDly=0},nbt=!{SelectedItem:{tag:{syncTrigger:1}}}] reqPistolFire 2
execute if score #pistol_fire_double Config matches 1 run scoreboard players add @s[predicate=galaxy:weapon/hand_main-pistol,predicate=galaxy:weapon/hand_off-pistol,scores={pistolFireDly=0},nbt={SelectedItem:{tag:{syncTrigger:1}}}] reqPistolFire 3

execute if score @s reqPistolFire matches 1.. run function galaxy:weapon/pistol/fire
scoreboard players set @s[scores={reqPistolFire=1..}] reqPistolFire 0
