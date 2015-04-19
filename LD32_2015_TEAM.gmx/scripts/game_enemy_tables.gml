///game_weapon_tables()

global.enemyMap = ds_map_create();

var robin, vulture, pidgeon, crow, owl, airhorn;

robin = ds_map_create();
pidgeon = ds_map_create();
crow = ds_map_create();
owl = ds_map_create();
vulture = ds_map_create();
airhorn = ds_map_create();

ds_map_add_map(global.enemyMap, ENMTYPE_PIDGEON ,pidgeon);

ds_map_add(pidgeon, ENM_SPRITE, ene_single_mask_spr);
ds_map_add(pidgeon, ENM_ARMOR, 15);
ds_map_add(pidgeon, ENM_HEALTH, 100);
ds_map_add(pidgeon, ENM_SPEED, 2);


ds_map_add_map(global.enemyMap, ENMTYPE_ROBIN , robin);

ds_map_add(robin, ENM_SPRITE, ene_melee_mask_spr);
ds_map_add(robin, ENM_ARMOR, 5);
ds_map_add(robin, ENM_HEALTH, 80);
ds_map_add(robin, ENM_SPEED, 3);

ds_map_add_map(global.enemyMap, ENMTYPE_VULTURE , vulture);

ds_map_add(vulture, ENM_SPRITE, ene_rocket_mask_spr);
ds_map_add(vulture, ENM_ARMOR, 25);
ds_map_add(vulture, ENM_HEALTH, 130);
ds_map_add(vulture, ENM_SPEED, 1);

ds_map_add_map(global.enemyMap, ENMTYPE_OWL , owl);

ds_map_add(owl, ENM_SPRITE, ene_nuke_mask_spr);
ds_map_add(owl, ENM_ARMOR, 10);
ds_map_add(owl, ENM_HEALTH, 90);
ds_map_add(owl, ENM_SPEED, 3);

ds_map_add_map(global.enemyMap, ENMTYPE_CROW , crow);

ds_map_add(crow, ENM_SPRITE, enemy_mask_spr);
ds_map_add(crow, ENM_ARMOR, 0);
ds_map_add(crow, ENM_HEALTH, 80);
ds_map_add(crow, ENM_SPEED, 1);

ds_map_add_map(global.enemyMap, ENMTYPE_AIRHORN, airhorn);

ds_map_add(airhorn, ENM_SPRITE, ene_airhorn_mask_spr);
ds_map_add(airhorn, ENM_ARMOR, 100);
ds_map_add(airhorn, ENM_HEALTH, 100);
ds_map_add(airhorn, ENM_SPEED, 1);