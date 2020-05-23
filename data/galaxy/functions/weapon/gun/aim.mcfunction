# execute if score #gun_aim Config matches 1 run scoreboard players add @a[scores={isSneak=0,holdGun=1,reqAimOff=0}] reqAimOff 1
# execute if score #gun_aim Config matches 1 run scoreboard players add @a[scores={isSneak=1,holdGun=1,reqAimOn=0}] reqAimOn 1

# # request handler: Aim off
# execute as @a[scores={reqAimOff=1,holdGun=1,styleMainGun=1}] run function galaxy:weapon/gun/replace_main-hand/gun
# execute as @a[scores={reqAimOff=1,holdGun=2,styleMainGun=1}] run function galaxy:weapon/gun/replace_main-hand/gun_dual
# execute as @a[scores={reqAimOff=1,holdGun=2,styleSecGun=1}] run function galaxy:weapon/gun/replace_off-hand/gun_dual

# scoreboard players set @a[scores={reqAimOff=1}] reqAimOn 0
# scoreboard players set @a[scores={reqAimOff=1}] reqAimOff -1


# # request handler: Aim on
# execute as @a[scores={reqAimOn=1,holdGun=1,styleMainGun=1}] run function galaxy:weapon/gun/replace_main-hand/gun_aim
# execute as @a[scores={reqAimOn=1,holdGun=2,styleMainGun=1}] run function galaxy:weapon/gun/replace_main-hand/gun_dual_aim
# execute as @a[scores={reqAimOn=1,holdGun=2,styleSecGun=1}] run function galaxy:weapon/gun/replace_off-hand/gun_dual_aim

# scoreboard players set @a[scores={reqAimOn=1}] reqAimOff 0
# scoreboard players set @a[scores={reqAimOn=1}] reqAimOn -1
