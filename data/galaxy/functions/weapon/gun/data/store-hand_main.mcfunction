tag @s add galaxy._tag.ThisDataSource

execute as @e[tag=cu.dataStorage.container,tag=galaxy.data.gun] if score @s cu.dataStorage.UUID.0 = @a[tag=galaxy._tag.ThisDataSource,limit=1] galaxy.gun.UUID.mainHand0 if score @s cu.dataStorage.UUID.1 = @a[tag=galaxy._tag.ThisDataSource,limit=1] galaxy.gun.UUID.mainHand1 if score @s cu.dataStorage.UUID.2 = @a[tag=galaxy._tag.ThisDataSource,limit=1] galaxy.gun.UUID.mainHand2 if score @s cu.dataStorage.UUID.3 = @a[tag=galaxy._tag.ThisDataSource,limit=1] galaxy.gun.UUID.mainHand3 run tag @s add galaxy._tag.ThisDataTarget
execute if entity @e[tag=galaxy._tag.ThisDataTarget] run function galaxy:weapon/gun/data/store_from-hand_main
execute unless entity @e[tag=galaxy._tag.ThisDataTarget] run function galaxy:weapon/gun/data/create-hand_main
tag @e[tag=galaxy._tag.ThisDataTarget] remove galaxy._tag.ThisDataTarget

tag @s remove galaxy._tag.ThisDataSource
