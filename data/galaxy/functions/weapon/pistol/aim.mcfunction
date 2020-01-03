# execute if score #pistol_aim Config matches 1 run scoreboard players add @a[scores={isSneak=0,holdPistol=1,reqAimOff=0}] reqAimOff 1
# execute if score #pistol_aim Config matches 1 run scoreboard players add @a[scores={isSneak=1,holdPistol=1,reqAimOn=0}] reqAimOn 1

# # request handler: Aim off
# execute as @a[scores={reqAimOff=1,holdPistol=1,styleMainPistol=1}] run function galaxy:weapon/pistol/replace_main-hand/pistol
# execute as @a[scores={reqAimOff=1,holdPistol=2,styleMainPistol=1}] run function galaxy:weapon/pistol/replace_main-hand/pistol_dual
# execute as @a[scores={reqAimOff=1,holdPistol=2,styleSecPistol=1}] run function galaxy:weapon/pistol/replace_off-hand/pistol_dual

# scoreboard players set @a[scores={reqAimOff=1}] reqAimOn 0
# scoreboard players set @a[scores={reqAimOff=1}] reqAimOff -1


# # request handler: Aim on
# execute as @a[scores={reqAimOn=1,holdPistol=1,styleMainPistol=1}] run function galaxy:weapon/pistol/replace_main-hand/pistol_aim
# execute as @a[scores={reqAimOn=1,holdPistol=2,styleMainPistol=1}] run function galaxy:weapon/pistol/replace_main-hand/pistol_dual_aim
# execute as @a[scores={reqAimOn=1,holdPistol=2,styleSecPistol=1}] run function galaxy:weapon/pistol/replace_off-hand/pistol_dual_aim

# scoreboard players set @a[scores={reqAimOn=1}] reqAimOff 0
# scoreboard players set @a[scores={reqAimOn=1}] reqAimOn -1
