switch (oBattleManager.enemyToHurt){
	case 1: direction = point_direction(x,y,oEnemyBattle1.x,oEnemyBattle1.y); break;
    case 2: direction = point_direction(x,y,oEnemyBattle2.x,oEnemyBattle2.y); break;
    case 3: direction = point_direction(x,y,oEnemyBattle3.x,oEnemyBattle3.y); break;
}