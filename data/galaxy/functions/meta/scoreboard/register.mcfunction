### boolean use numbers instead of true or false
### false = 0
### true = 1

# general

scoreboard objectives add Meta dummy "meta"

scoreboard objectives add Config dummy "config"

# damage calculator temp
scoreboard objectives add health dummy "num-Health calculator temp"

# Total damage taken (damage taken + absorbed damage)
scoreboard objectives add dmgTotal dummy "num-Total damage taken"

# Absorbed Damage (yellow heart)
scoreboard objectives add dmgAbsorb minecraft.custom:minecraft.damage_absorbed "num-Absorbed damage"

# Damage taken (red heart)
scoreboard objectives add dmgTake minecraft.custom:minecraft.damage_taken "num-Damage taken"

# coordinate X
scoreboard objectives add posX dummy "num-Coordinate X"

# coordinate Y
scoreboard objectives add posY dummy "num-Coordinate Y"

# coordinate Z
scoreboard objectives add posZ dummy "num-Coordinate Z"

# rotation 0
scoreboard objectives add rotation0 dummy "num-Rotation 0"

# rotation 1
scoreboard objectives add rotation1 dummy "num-Rotation 1"

# Hitbox X1
scoreboard objectives add hitboxX1 dummy "num-Hitbox X1"

# Hitbox X2
scoreboard objectives add hitboxX2 dummy "num-Hitbox X2"

# Hitbox Y1
scoreboard objectives add hitboxY1 dummy "num-Hitbox Y1"

# Hitbox Y2
scoreboard objectives add hitboxY2 dummy "num-Hitbox Y2"

# Hitbox Z1
scoreboard objectives add hitboxZ1 dummy "num-Hitbox Z1"

# Hitbox Z2
scoreboard objectives add hitboxZ2 dummy "num-Hitbox Z2"

# mini UUID most
scoreboard objectives add miniUUIDMost dummy "num-Mini UUID most"

# mini UUID least
scoreboard objectives add miniUUIDLeast dummy "num-Mini UUID least"


# detector

# True when player's main-hand is empty.
scoreboard objectives add isMainHandClear dummy "boolean-MainHand clear"


# True when player's off-hand is empty.
scoreboard objectives add isOffHandClear dummy "boolean-OffHand clear"


# True when player is sneaking.
scoreboard objectives add isSneak dummy "boolean-Sneaking"

scoreboard objectives add SneakCount minecraft.custom:minecraft.sneak_time "num-Sneak time recorder"

scoreboard objectives add isSneakInit dummy "boolean-Sneak initialized"

scoreboard objectives add isSneakComp dummy "boolean-Sneak comparing"

scoreboard objectives add SneakComp1 dummy "num-Sneak time comparator temp1"


# True when player right click(use item). (Not callable, see ../meta/detector/use_item)
scoreboard objectives add isRClick dummy "boolean-Right click"

scoreboard objectives add RClickCount minecraft.used:minecraft.carrot_on_a_stick "num-Right click times recorder"


# Success count of hitbox checking
scoreboard objectives add sucHitboxCheck dummy "num-Hitbox check success count"
