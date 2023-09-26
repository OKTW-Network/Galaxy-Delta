data modify storage galaxy:temp +weapon.katana.lore.result set value []
execute if score #build_lore.isComponent galaxy matches 1 run scoreboard players set #weapon.katana.lore.itemType galaxy -1
function galaxy:weapon/katana/lore/_inspect
function galaxy:weapon/katana/lore/_normalize_value

execute if score #weapon.katana.lore.itemType galaxy matches 2 run function galaxy:weapon/katana/lore/name

scoreboard players set #1 temp 0
execute if score #weapon.katana.lore.itemType galaxy matches -1..0 if score #weapon.katana.lore._buildAttackDamage galaxy matches 1.. run scoreboard players set #1 temp 1
execute if score #weapon.katana.lore.itemType galaxy matches -1..0 if score #weapon.katana.lore._buildAttackSpeed galaxy matches 1.. run scoreboard players set #1 temp 1
execute if score #weapon.katana.lore.itemType galaxy matches -1..1 if score #weapon.katana.lore._buildCustomAttribute galaxy matches 1.. run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run function galaxy:weapon/katana/lore/custom_attribute

data remove storage galaxy:temp +weapon.katana.lore.input
scoreboard players reset #weapon.katana.lore.itemType galaxy
scoreboard players reset #weapon.katana.lore._buildAttackDamage galaxy
scoreboard players reset #weapon.katana.lore._buildAttackSpeed galaxy
scoreboard players reset #weapon.katana.lore._buildCustomAttribute galaxy
scoreboard players reset #weapon.katana.lore._buildDrawStrikeName galaxy
scoreboard players reset #weapon.katana.lore._buildDrawStrikeDamage galaxy
scoreboard players reset #weapon.katana.lore._buildDrawStrikeEffectStrength galaxy
scoreboard players reset #weapon.katana.lore._buildDrawStrikeCooldown galaxy
scoreboard players reset #weapon.katana.lore._buildSkillName galaxy
scoreboard players reset #weapon.katana.lore._buildSkillDamage galaxy
scoreboard players reset #weapon.katana.lore._buildSkillEffectStrength galaxy
scoreboard players reset #weapon.katana.lore._buildSkillCooldown galaxy
