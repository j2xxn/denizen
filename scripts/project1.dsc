snow_candy_red:
    type: item
    material: red_candle
    display name: <&f>[<&c>⭐<&f>] - <&c>Червона цукерка
    lore:
    - "<&f>"
    - "<&f>● Цукерка з новорічним ароматом"
    - "<&f>● Використовуй цукерки для крафту"
    - "<&f>"
    - "<&f>● Використати - <&a><&n>ПКМ <&f>"
    - "<&f>● Можна з'їсти раз в <&e><n>5 секунд. <&f>"

snow_candyevent_red:
    type: world
    events:
        on player right clicks block with:snow_candy_red:
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
    material: yellow_candle
    display name: <&f>[<&e>⭐<&f>] - <&e>Жовта цукерка
    lore:
    - "<&f>"
    - "<&f>● Цукерка з новорічним ароматом"
    - "<&f>● Використовуй цукерки для крафту"
    - "<&f>"
    - "<&f>● Використати - <&a><&n>ПКМ <&f>"
    - "<&f>● Можна з'їсти раз в <&e><n>5 секунд. <&f>"

snow_candyevent_yellow:
    type: world
    events:
        on player right clicks block with:snow_candy_yellow:
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
    material: lime_candle
    display name: <&f>[<&a>⭐<&f>] - <&a>Зелена цукерка
    lore:
    - "<&f>"
    - "<&f>● Цукерка з новорічним ароматом"
    - "<&f>● Використовуй цукерки для крафту"
    - "<&f>"
    - "<&f>● Використати - <&a><&n>ПКМ <&f>"
    - "<&f>● Можна з'їсти раз в <&e><n>5 секунд. <&f>"

snow_candyevent_green:
    type: world
    events:
        on player right clicks block with:snow_candy_green:
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
    material: red_bundle
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
    material: purple_bundle
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
    material: bundle
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

lootbag1_droped:
    type: world
    events:
        on player right clicks block with:loot_bag1:
                - ratelimit <player> 60t
                - determine passively cancelled
                - shoot snowball[item=pumpkin_bucket] save:ff speed:0.1 destination:1 destination:<player.location.forward[15]> <player.eye_location>
                - define ent <entry[ff].shot_entity>
                - take iteminhand quantity:1
                - while <[ent].is_spawned>:
                    - define loc <[ent].location>
                    - playeffect effect:FLAME quantity:1 offset:0.1 at:<[loc]> visibility:100
                    - if <util.random_chance[10]>:
                        - playsound <[loc]> sound:ENTITY_WITCH_THROW pitch:0.1
                    - wait 1t
                - playeffect effect:FLAME <[loc].above[-2]>
                - playsound sound:block_amethyst_block_break pitch:3 volume:10 <[loc]>
                - random:
                  - repeat 1:
                    - drop <list[snow_candy_red].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <list[snow_candy_yellow].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <list[snow_candy_green].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                - repeat 10:
                    - playeffect effect:SOUL <[loc]> <location[0,5,0]> quantity:1 visibility:10
                    - wait 1t

lootbag2_droped:
    type: world
    events:
        on player right clicks block with:loot_bag2:
                - ratelimit <player> 60t
                - determine passively cancelled
                - shoot snowball[item=pumpkin_bucket] save:ff speed:0.1 destination:1 destination:<player.location.forward[15]> <player.eye_location>
                - define ent <entry[ff].shot_entity>
                - take iteminhand quantity:1
                - while <[ent].is_spawned>:
                    - define loc <[ent].location>
                    - playeffect effect:FLAME quantity:1 offset:0.1 at:<[loc]> visibility:100
                    - if <util.random_chance[10]>:
                        - playsound <[loc]> sound:ENTITY_WITCH_THROW pitch:0.1
                    - wait 1t
                - playeffect effect:FLAME <[loc].above[-2]>
                - playsound sound:block_amethyst_block_break pitch:3 volume:10 <[loc]>
                - random:
                  - repeat 1:
                    - drop <list[iron_ingot].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <list[emerald].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <list[diamond].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                - repeat 10:
                    - playeffect effect:SOUL <[loc]> <location[0,5,0]> quantity:1 visibility:10
                    - wait 1t

lootbag3_droped:
    type: world
    events:
        on player right clicks block with:loot_bag3:
                - ratelimit <player> 60t
                - determine passively cancelled
                - shoot snowball[item=pumpkin_bucket] save:ff speed:0.1 destination:1 destination:<player.location.forward[15]> <player.eye_location>
                - define ent <entry[ff].shot_entity>
                - take iteminhand quantity:1
                - while <[ent].is_spawned>:
                    - define loc <[ent].location>
                    - playeffect effect:FLAME quantity:1 offset:0.1 at:<[loc]> visibility:100
                    - if <util.random_chance[10]>:
                        - playsound <[loc]> sound:ENTITY_WITCH_THROW pitch:0.1
                    - wait 1t
                - playeffect effect:FLAME <[loc].above[-2]>
                - playsound sound:block_amethyst_block_break pitch:3 volume:10 <[loc]>
                - random:
                  - repeat 1:
                    - drop <list[netherite_ingot].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <list[diamond_block].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                  - repeat 1:
                    - drop <list[netherite_block].random[1]> <cuboid[<location[-1,-1,-1]>|<location[1,1,1]>].spawnable_blocks.random> <[loc]>
                - repeat 10:
                    - playeffect effect:SOUL <[loc]> <location[0,5,0]> quantity:1 visibility:10
                    - wait 1t

spawn_candies_around_players:
    type: world
    debug: false
    events:
        on system time hourly:  # Спавн кожну годину
          - define_spawned_candies <player.list.size.multiply[5]>
          - foreach <server.online_players>:
                - repeat 5:
                    - define <context.player.location.add[<random[-3,3]>,0,<random[-3,3]>]>  # Локація навколо гравця
                    - spawn <entry[define]> item:candies