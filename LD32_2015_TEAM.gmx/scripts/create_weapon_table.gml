///create_weapon_table()

global.weaponMap = ds_map_create();

shotgun = ds_map_create();

ds_map_add_map(global.weaponMap, WEP_SHOTGUN ,shotgun);

ds_map_add(shotgun, "damageMod", 20);
ds_map_add(shotgun, "scaleX", 1);
ds_map_add(shotgun, "scaleY", 1);
ds_map_add(shotgun, "numBullets", 5);
ds_map_add(shotgun, "damageType", "Projectile");

singleShot = ds_map_create();

ds_map_add_map(global.weaponMap, WEP_SINGLESHOT ,singleShot);

ds_map_add(singleShot, "damageMod", 30);
ds_map_add(singleShot, "scaleX", 1);
ds_map_add(singleShot, "scaleY", 1);
ds_map_add(singleShot, "damageType", "Projectile");

melee = ds_map_create();

ds_map_add_map(global.weaponMap, WEP_MELEE ,melee);

ds_map_add(melee, "damageMod", 50);
ds_map_add(melee, "scaleX", 1);
ds_map_add(melee, "scaleY", 1);
ds_map_add(melee, "range", 1);
ds_map_add(melee, "damageType", "Melee");

rocket = ds_map_create();

ds_map_add_map(global.weaponMap, WEP_ROCKET ,rocket);

ds_map_add(rocket, "damageMod", 30);
ds_map_add(rocket, "scaleX", 1);
ds_map_add(rocket, "scaleY", 1);
ds_map_add(rocket, "splash", 20);
ds_map_add(rocket, "damageType", "Explosive");