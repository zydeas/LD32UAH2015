///game_weapon_tables()

global.weaponMap = ds_map_create();

var shotgun,singleShot,melee,rocket, machinegun;

nuke = ds_map_create();
mini = ds_map_create();
shotgun = ds_map_create();
singleShot = ds_map_create();
melee = ds_map_create();
rocket = ds_map_create();
machinegun  = ds_map_create();

ds_map_add_map(global.weaponMap, WEP_NUKE ,nuke);

ds_map_add(nuke, WEPTAG_SPRITE,      NULL);
ds_map_add(nuke, WEPTAG_TYPE,        WEPTYPE_MELEE);
ds_map_add(nuke, WEPTAG_FIRE_RATE,   1);
ds_map_add(nuke, WEPTAG_RANGE,   1);
ds_map_add(nuke, WEPTAG_PROJECTILE,  explosion_obj);

ds_map_add_map(global.weaponMap, WEP_MINI ,mini);

ds_map_add(mini, WEPTAG_SPRITE,      NULL);
ds_map_add(mini, WEPTAG_TYPE,        WEPTYPE_PROJECTILE );
ds_map_add(mini, WEPTAG_FIRE_RATE,   0.5);
ds_map_add(mini, WEPTAG_RANGE,   1);
ds_map_add(mini, WEPTAG_PROJECTILE,  weapon_minigun_obj);

ds_map_add_map(global.weaponMap, WEP_SHOTGUN ,shotgun);

ds_map_add(shotgun, WEPTAG_SPRITE,      weapon_spr);
ds_map_add(shotgun, WEPTAG_TYPE,        WEPTYPE_PROJECTILE);
ds_map_add(shotgun, WEPTAG_FIRE_RATE,   1);
ds_map_add(shotgun, WEPTAG_PROJECTILE,  weapon_shotgun_obj );

ds_map_add_map(global.weaponMap, WEP_MACHINEGUN ,machinegun);

ds_map_add(machinegun, WEPTAG_SPRITE,      weapon_spr);
ds_map_add(machinegun, WEPTAG_TYPE,        WEPTYPE_PROJECTILE);
ds_map_add(machinegun, WEPTAG_FIRE_RATE,   1);
ds_map_add(machinegun, WEPTAG_PROJECTILE,  weapon_machinegun_obj );

ds_map_add_map(global.weaponMap, WEP_SINGLESHOT ,singleShot);

ds_map_add(singleShot, WEPTAG_SPRITE,      weapon_spr);
ds_map_add(singleShot, WEPTAG_TYPE,        WEPTYPE_PROJECTILE);
ds_map_add(singleShot, WEPTAG_FIRE_RATE,   5);
ds_map_add(singleShot, WEPTAG_PROJECTILE,  projectile_obj);

ds_map_add_map(global.weaponMap, WEP_MELEE ,melee);

ds_map_add(melee, WEPTAG_SPRITE,      sword_spr);
ds_map_add(melee, WEPTAG_TYPE,        WEPTYPE_MELEE);
ds_map_add(melee, WEPTAG_FIRE_RATE,   1);
ds_map_add(melee, WEPTAG_RANGE,   1);
ds_map_add(melee, WEPTAG_PROJECTILE,  knife_hitbox_obj);

ds_map_add_map(global.weaponMap, WEP_ROCKET ,rocket);

ds_map_add(rocket, WEPTAG_SPRITE,      NULL);
ds_map_add(rocket, WEPTAG_TYPE,        WEPTYPE_PROJECTILE);
ds_map_add(rocket, WEPTAG_FIRE_RATE,   100);
ds_map_add(rocket, WEPTAG_PROJECTILE,  rocket_obj);