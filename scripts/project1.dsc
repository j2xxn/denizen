snow_candy_red:
    type: item
    material: red_wool
    display name: <red> Новорічна цукерка
    lore:
    - "Використовуй 10 цукерок для крафту"
    - "Мішечка 1 рівня"

snow_candyevent_red:
    type: world
    events:
        on player right clicks block with:candy:
            - ratelimit <player> 100t
            - take iteminhand
            - narrate "<&f>[<&c>⭐<&f>] - <&f>Конфета с приятным вкусом!"
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - cast luck duration:30s amplifier:1

snow_candy_yellow:
    type: item
    material: red_wool
    display name: <yellow> Новорічна цукерка
    lore:
    - "Використовуй цукерки для крафту"
    - "Мішечка 1 рівня"

snow_candyevent_yellow:
    type: world
    events:
        on player right clicks block with:candy:
            - ratelimit <player> 100t
            - take iteminhand
            - narrate "<&f>[<&c>⭐<&f>] - <&f>Конфета с приятным вкусом!"
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - cast luck duration:30s amplifier:1

snow_candy_green:
    type: item
    material: red_wool
    display name: <green> Новорічна цукерка
    lore:
    - "Використовуй цукерки для крафту"
    - "Мішечка 1 рівня"

snow_candyevent_green:
    type: world
    events:
        on player right clicks block with:candy:
            - ratelimit <player> 100t
            - take iteminhand
            - narrate "<&f>[<&c>⭐<&f>] - <&f>Конфета с приятным вкусом!"
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - playsound sound:ENTITY_GENERIC_EAT <player>
            - wait 5t
            - cast luck duration:30s amplifier:1

loot_bag1:
    type: item
    material: chest
    display name: <green> Новорічний пакунок 1 рівня
    lore:
    - "Новорічний подарунок від Санти"
    recipes:
        1:
         type: shaped
         input:
         - air|snow_candy_red|air
         - air|snow_candy_yellow|air
         - air|snow_candy_green|air

loot_bag2:
    type: item
    material: chest
    display name: <green> Новорічний пакунок 2 рівня
    lore:
    - "Новорічний подарунок від Санти"
    recipes:
        1:
         type: shaped
         input:
         - air|loot_bag1|air
         - air|loot_bag1|air
         - air|loot_bag1|air

loot_bag3:
    type: item
    material: chest
    display name: <green> Новорічний пакунок 3 рівня
    lore:
    - "Новорічний подарунок від Санти"
    recipes:
        1:
         type: shaped
         input:
         - air|loot_bag2|air
         - air|loot_bag2|air
         - air|loot_bag2|air

open_loot_bag1:
    type: world
    events:
        on player right clicks air with:loot_bag1:
        - take iteminhand quantity:1
        