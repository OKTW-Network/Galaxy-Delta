
### boolean use numbers instead of true or false
### false = 0
### true = 1


# True if player's off-hand holding katana-type item.
scoreboard objectives add isHoldKatana dummy "boolean-OffHand holding katana-type item"

# True if player's off-hand holding scabbard-type item.
scoreboard objectives add isHoldScabbard dummy "boolean-OffHand holding scabbard-type item"

# True if player's main-hand holding edge-type item.
scoreboard objectives add isHoldEdge dummy "boolean-MainHand holding edge-type item"


# Record katana-type item's style in player's off-hand.
scoreboard objectives add styleKatana dummy "num-Katana style"

# Record scabbard-type item's style in player's off-hand.
scoreboard objectives add styleScabbard dummy "num-scabbard style"

# Record edge-type item's style in player's main-hand.
scoreboard objectives add styleEdge dummy "num-edge style"


scoreboard objectives add reqActSwapPull dummy "request-Action:Swap-PullOut"

scoreboard objectives add reqActSwapPut dummy "request-Action:Swap-PutIn"

scoreboard objectives add reqActStun dummy "request-Action:Stun"


# True if player's stun action is in cooldown.
scoreboard objectives add isActStunCd dummy "boolean-Action:Stun cooldown"

# How long the stun action cooldown is.
scoreboard objectives add cdActStun dummy "num-Action:Stun cooldown"

# Success count of stun action.
scoreboard objectives add sucActStun dummy "num-Action:Stun success count"


scoreboard objectives add cdActStunTemp1 dummy "num-:Action:Stun cooldown calculation temp1"

scoreboard objectives add cdActStunTemp2 dummy "num-:Action:Stun cooldown calculation temp2"
