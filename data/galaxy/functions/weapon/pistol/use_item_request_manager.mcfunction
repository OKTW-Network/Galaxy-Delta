### Triggered with main detector

function galaxy:weapon/pistol/meta/detector/holding_pistol

# pistol firing
execute if score #pistol_fire_single Config matches 1 run scoreboard players add @s[scores={isRClick=1,holdPistol=1,reqPistolFire=0,pistolFireDly=-1}] reqPistolFire 1
execute if score #pistol_fire_switch Config matches 1 run scoreboard players add @s[scores={isRClick=1,holdPistol=2,reqPistolFire=0,pistolFireDly=-1},nbt=!{SelectedItem:{tag:{syncTrigger:1}}}] reqPistolFire 2
execute if score #pistol_fire_double Config matches 1 run scoreboard players add @s[scores={isRClick=1,holdPistol=2,reqPistolFire=0,pistolFireDly=-1},nbt={SelectedItem:{tag:{syncTrigger:1}}}] reqPistolFire 3

execute if score @s reqPistolFire matches 1.. run function galaxy:weapon/pistol/fire
