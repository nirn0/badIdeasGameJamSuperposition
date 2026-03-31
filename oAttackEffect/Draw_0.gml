draw_self();

switch (oBattleManager.enemyToHurt){
	case 1: draw_sprite_ext(sSlashInverse,image_index,oEnemyBattle1.x,oEnemyBattle1.y,1,1,direction,c_white,1); break;
	case 2: draw_sprite_ext(sSlashInverse,image_index,oEnemyBattle2.x,oEnemyBattle2.y,1,1,direction,c_white,1); break;
	case 3: draw_sprite_ext(sSlashInverse,image_index,oEnemyBattle3.x,oEnemyBattle3.y,1,1,direction,c_white,1); break;
}