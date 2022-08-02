execute if score #gun.shoot.type galaxy matches 1 run function galaxy:weapon/gun/sound/shoot/type1/pistol

execute if score #gun.shoot.type galaxy matches 2 run function galaxy:weapon/gun/sound/shoot/type2/sniper_rifle
execute if score #gun.shoot.type galaxy matches 2 if data storage galaxy:temp +weapon.gun.shoot{cosmeticID:"gun.cosmetic.type2.railgun"} run function galaxy:weapon/gun/sound/shoot/type2/railgun

execute if score #gun.shoot.type galaxy matches 3 run function galaxy:weapon/gun/sound/shoot/type3/shotgun
