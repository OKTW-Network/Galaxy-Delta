
### boolean use numbers instead of true or false
### false = 0
### true = 1


scoreboard objectives add reqPistolFire dummy "request-Pistol fire"


scoreboard objectives add holdPistol dummy "num-Holding pistol"

# True when player's main-hand holding pistol.
scoreboard objectives add isMainHandPistol dummy "boolean-MainHand holding pistol"

# True when player's off-hand holding pistol.
scoreboard objectives add isOffHandPistol dummy "boolean-OffHand holding pistol"


# Record the style of pistol in player's main-hand.
scoreboard objectives add styleMainPistol dummy "num-MainHand pistol style"

# Record the style of pistol in player's off-hand.
scoreboard objectives add styleSecPistol dummy "num-OffHand pistol style"


# 
scoreboard objectives add pistolSwitch dummy "num-Pistol firing switch"

scoreboard objectives add pistolFireDly dummy "num-Pistol firing delay"

scoreboard objectives add MhPistolCooling dummy "num-MainHand pistol cooling"

scoreboard objectives add MhPistolCoolDly dummy "num-MainHand pistol cooling delay"

scoreboard objectives add MhPistolMaxTemp dummy "num-MainHand pistol max temperature"

scoreboard objectives add MhPistolTemper dummy "num-MainHand pistol temperature"

scoreboard objectives add MhPistolHeat dummy "num-MainHand pistol heat"

scoreboard objectives add MhPistolOverheat dummy "num-MainHand pistol overheat"

scoreboard objectives add MhPistolFireDly dummy "num-MainHand pistol firing delay"

scoreboard objectives add FhPistolCooling dummy "num-OffHand pistol cooling"

scoreboard objectives add FhPistolCoolDly dummy "num-OffHand pistol cooling delay"

scoreboard objectives add FhPistolMaxTemp dummy "num-OffHand pistol max temperature"

scoreboard objectives add FhPistolTemper dummy "num-OffHand pistol temperature"

scoreboard objectives add FhPistolHeat dummy "num-OffHand pistol heat"

scoreboard objectives add FhPistolOverheat dummy "num-OffHand pistol overheat"

scoreboard objectives add FhPistolFireDly dummy "num-OffHand pistol firing delay"


# Pistol UUID
scoreboard objectives add MhPistolUUIDM dummy "num-MainHand pistol mini UUID most"

scoreboard objectives add MhPistolUUIDL dummy "num-MainHand pistol mini UUID least"

scoreboard objectives add FhPistolUUIDM dummy "num-MainHand pistol mini UUID most"

scoreboard objectives add FhPistolUUIDL dummy "num-MainHand pistol mini UUID least"


# Success count of bullet moving.
scoreboard objectives add sucBulletMove dummy "num-Bullet moving success count"

# Success count of bullet hit.
scoreboard objectives add sucBulletHit dummy "num-Bullet hit success count"


# Generator book options
scoreboard objectives add optPistolStyle dummy "num-Generate Option: pistol style"

scoreboard objectives add optPistolDamage dummy "num-Generate Option: pistol damage"

scoreboard objectives add optPistolMaxTemp dummy "num-Generate Option: pistol Maximum temperature"

scoreboard objectives add optPistolHeat dummy "num-Generate Option: pistol heat"

scoreboard objectives add optPistolCooling dummy "num-Generate Option: pistol cooling"

scoreboard objectives add optPistolCoolDly dummy "num-Generate Option: pistol cooling delay"

scoreboard objectives add optPistolFireDly dummy "num-Generate Option: pistol firing delay"

scoreboard objectives add optPistolBltDist dummy "num-Generate Option: pistol distance"

scoreboard objectives add optPistolBltSped dummy "num-Generate Option: pistol bullet speed"

scoreboard objectives add optPistolBltOfst dummy "num-Generate Option: pistol bullet offset"
