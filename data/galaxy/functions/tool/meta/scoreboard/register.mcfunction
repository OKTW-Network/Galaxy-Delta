### boolean use numbers instead of true or false
### false = 0
### true = 1

# Wrench UUID
scoreboard objectives add MhWrenchUUIDM dummy "num-MainHand wrench mini UUID most"

scoreboard objectives add MhWrenchUUIDL dummy "num-MainHand wrench mini UUID least"


# Quantity of shield projector
scoreboard objectives add haveShield dummy "num-Shield quantity"

# Status of player's shield projector
scoreboard objectives add shieldStatus dummy "num-Shield status"

# Triggered when player got too many shield projector
scoreboard objectives add errMultiShield dummy "boolean-Multiple shield"

scoreboard objectives add cdShield dummy "num-Shield regen cooldown"

scoreboard objectives add delayShield dummy "num-Shield regen delay"

scoreboard objectives add shieldFull dummy "boolean-Shield full"

scoreboard objectives add shieldHealthy dummy "num-Shield healthy"
