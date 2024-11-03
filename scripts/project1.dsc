my_task:
    type: task
    script:
    - narrate "Hello, world!"

my_economy:
    type: economy
    priority: lowest
    name single: Dollar
    name plural: Dollars
    digits: 2
    format: $<[amount]>
    balance: <player.flag[balance]>
    has: <player.flag[balance].is[or_more].than[<[amount[>]>
    withdraw:
    - flag <player> balance:-:<[amount]>
    deposit:
    - flag <player> balance:+:<[amount]>