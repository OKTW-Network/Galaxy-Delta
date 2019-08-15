### boolean use numbers instead of true or false
### false = 0
### true = 1

# general

scoreboard objectives add Meta dummy "meta"

scoreboard objectives add Config dummy "config"

# damage calculator temp
scoreboard objectives add health dummy "num-Health calculator temp"

# rotation 0
scoreboard objectives add rotation0 dummy "num-rotation 0"

# rotation 1
scoreboard objectives add rotation1 dummy "num-rotation 1"



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


# True when player right click(use item). (Not callable)
scoreboard objectives add isRClick dummy "boolean-Right click"

scoreboard objectives add RClickCount minecraft.used:minecraft.carrot_on_a_stick "num-Right click times recorder"
