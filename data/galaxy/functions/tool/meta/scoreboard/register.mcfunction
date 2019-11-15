
### boolean use numbers instead of true or false
### false = 0
### true = 1


# Total damage taken (damage taken + absorbed damage)
scoreboard objectives add dmgTotal dummy "num-Total damage taken"

# Absorbed Damage (yellow heart)
scoreboard objectives add dmgAbsorb minecraft.custom:minecraft.damage_absorbed "num-Absorbed damage"

# Damage taken (red heart)
scoreboard objectives add dmgTake minecraft.custom:minecraft.damage_taken "num-Damage taken"

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
