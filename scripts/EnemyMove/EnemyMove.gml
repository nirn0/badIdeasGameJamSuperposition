function EnemyMove(){
    var chargerMoved = false;
    if(die){
        hasMoved = true;
        hasAttacked = true;
    }
    if(!shouldStartMoving){
        var curDist = point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y);
        var targetCoords = 0;
        switch (name){
            case "enemy":
                var rCol = instance_position(x+48,y,oBattleThing);
                var lCol = instance_position(x-48,y,oBattleThing);
                var uCol = instance_position(x,y-48,oBattleThing);
                var dCol = instance_position(x,y+48,oBattleThing);
                var urCol = instance_position(x+48,y-48,oBattleThing);
                var ulCol = instance_position(x-48,y-48,oBattleThing);
                var drCol = instance_position(x+48,y+48,oBattleThing);
                var dlCol = instance_position(x-48,y+48,oBattleThing);
                
                var rightDist = point_distance(x+48,y,oPlayerBattle.x,oPlayerBattle.y);
                var leftDist = point_distance(x-48,y,oPlayerBattle.x,oPlayerBattle.y);
                var upDist = point_distance(x,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var downDist = point_distance(x,y+48,oPlayerBattle.x,oPlayerBattle.y);
                var upRightDist = point_distance(x+48,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var upLeftDist = point_distance(x-48,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var downLeftDist = point_distance(x-48,y+48,oPlayerBattle.x,oPlayerBattle.y);
                var downRightDist = point_distance(x+48,y+48,oPlayerBattle.x,oPlayerBattle.y);
                
                if(rCol != noone) rightDist = 9999;
                if(lCol != noone) leftDist = 9999;
                if(uCol != noone) upDist = 9999;
                if(dCol != noone) downDist = 9999;
                if(urCol != noone) upRightDist = 9999;
                if(ulCol != noone) upLeftDist = 9999;
                if(drCol != noone) downRightDist = 9999;
                if(dlCol != noone) downLeftDist = 9999;
                
                targetCoords = min(rightDist,leftDist,upDist,downDist,upRightDist,upLeftDist,downRightDist,downLeftDist);
                switch (targetCoords){
                	case rightDist :
                        xTo = x+48;
                        yTo = y;
                        break;
                    case leftDist :
                        xTo = x-48;
                        yTo = y;
                        break;
                    case upDist :
                        xTo = x;
                        yTo = y-48;
                        break;
                    case downDist :
                        xTo = x;
                        yTo = y+48;
                        break;
                    case upRightDist :
                        xTo = x+48;
                        yTo = y-48;
                        break;
                    case upLeftDist :
                        xTo = x-48;
                        yTo = y-48;
                        break;
                    case downRightDist :
                        xTo = x+48;
                        yTo = y+48;
                        break;
                    case downLeftDist :
                        xTo = x-48;
                        yTo = y+48;
                        break;
                } break;
            
            case "archer":
                var rCol = instance_position(x+96,y,oBattleThing);
                var lCol = instance_position(x-96,y,oBattleThing);
                var uCol = instance_position(x,y-96,oBattleThing);
                var dCol = instance_position(x,y+96,oBattleThing);
                var urCol = instance_position(x+96,y-96,oBattleThing);
                var ulCol = instance_position(x-96,y-96,oBattleThing);
                var drCol = instance_position(x+96,y+96,oBattleThing);
                var dlCol = instance_position(x-96,y+96,oBattleThing);
                
                var rightDist = point_distance(x+96,y,oPlayerBattle.x,oPlayerBattle.y);
                var leftDist = point_distance(x-96,y,oPlayerBattle.x,oPlayerBattle.y);
                var upDist = point_distance(x,y-96,oPlayerBattle.x,oPlayerBattle.y);
                var downDist = point_distance(x,y+96,oPlayerBattle.x,oPlayerBattle.y);
                var upRightDist = point_distance(x+96,y-96,oPlayerBattle.x,oPlayerBattle.y);
                var upLeftDist = point_distance(x-96,y-96,oPlayerBattle.x,oPlayerBattle.y);
                var downLeftDist = point_distance(x-96,y+96,oPlayerBattle.x,oPlayerBattle.y);
                var downRightDist = point_distance(x+96,y+96,oPlayerBattle.x,oPlayerBattle.y);
                
                if(rCol != noone or !instance_position(x+96,y,oSpace)) rightDist = 1;
                if(lCol != noone or !instance_position(x-96,y,oSpace)) leftDist = 1;
                if(uCol != noone or !instance_position(x,y-96,oSpace)) upDist = 1;
                if(dCol != noone or !instance_position(x,y+96,oSpace)) downDist = 1;
                if(urCol != noone or !instance_position(x+96,y-96,oSpace)) upRightDist = 1;
                if(ulCol != noone or !instance_position(x-96,y-96,oSpace)) upLeftDist = 1;
                if(drCol != noone or !instance_position(x+96,y+96,oSpace)) downRightDist = 1;
                if(dlCol != noone or !instance_position(x-96,y+96,oSpace)) downLeftDist = 1;
                    
                var rColHalf = instance_position(x+48,y,oBattleThing);
                var lColHalf = instance_position(x-48,y,oBattleThing);
                var uColHalf = instance_position(x,y-48,oBattleThing);
                var dColHalf = instance_position(x,y+48,oBattleThing);
                var urColHalf = instance_position(x+48,y-48,oBattleThing);
                var ulColHalf = instance_position(x-48,y-48,oBattleThing);
                var drColHalf = instance_position(x+48,y+48,oBattleThing);
                var dlColHalf = instance_position(x-48,y+48,oBattleThing);
                
                var rightDistHalf = point_distance(x+48,y,oPlayerBattle.x,oPlayerBattle.y);
                var leftDistHalf = point_distance(x-48,y,oPlayerBattle.x,oPlayerBattle.y);
                var upDistHalf = point_distance(x,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var downDistHalf = point_distance(x,y+48,oPlayerBattle.x,oPlayerBattle.y);
                var upRightDistHalf = point_distance(x+48,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var upLeftDistHalf = point_distance(x-48,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var downLeftDistHalf = point_distance(x-48,y+48,oPlayerBattle.x,oPlayerBattle.y);
                var downRightDistHalf = point_distance(x+48,y+48,oPlayerBattle.x,oPlayerBattle.y);
                
                if(rColHalf != noone or !instance_position(x+48,y,oSpace)) rightDistHalf = 1;
                if(lColHalf != noone or !instance_position(x-48,y,oSpace)) leftDistHalf = 1;
                if(uColHalf != noone or !instance_position(x,y-48,oSpace)) upDistHalf = 1;
                if(dColHalf != noone or !instance_position(x,y+48,oSpace)) downDistHalf = 1;
                if(urColHalf != noone or !instance_position(x+48,y-48,oSpace)) upRightDistHalf = 1;
                if(ulColHalf != noone or !instance_position(x-48,y-48,oSpace)) upLeftDistHalf = 1;
                if(drColHalf != noone or !instance_position(x+48,y+48,oSpace)) downRightDistHalf = 1;
                if(dlColHalf != noone or !instance_position(x-48,y+48,oSpace)) downLeftDistHalf = 1;
                
                targetCoords = max(rightDist,leftDist,upDist,downDist,upRightDist,upLeftDist,downRightDist,downLeftDist,rightDistHalf,leftDistHalf,upDistHalf,downDistHalf,upRightDistHalf,upLeftDistHalf,downRightDistHalf,downLeftDistHalf);
                switch (targetCoords){
                	case rightDist :
                        xTo = x+96;
                        yTo = y;
                        break;
                    case leftDist :
                        xTo = x-96;
                        yTo = y;
                        break;
                    case upDist :
                        xTo = x;
                        yTo = y-96;
                        break;
                    case downDist :
                        xTo = x;
                        yTo = y+96;
                        break;
                    case upRightDist :
                        xTo = x+96;
                        yTo = y-96;
                        break;
                    case upLeftDist :
                        xTo = x-96;
                        yTo = y-96;
                        break;
                    case downRightDist :
                        xTo = x+96;
                        yTo = y+96;
                        break;
                    case downLeftDist :
                        xTo = x-96;
                        yTo = y+96;
                        break;
                    case rightDistHalf :
                        xTo = x+48;
                        yTo = y;
                        break;
                    case leftDistHalf :
                        xTo = x-48;
                        yTo = y;
                        break;
                    case upDistHalf :
                        xTo = x;
                        yTo = y-48;
                        break;
                    case downDistHalf :
                        xTo = x;
                        yTo = y+48;
                        break;
                    case upRightDistHalf :
                        xTo = x+48;
                        yTo = y-48;
                        break;
                    case upLeftDistHalf :
                        xTo = x-48;
                        yTo = y-48;
                        break;
                    case downRightDistHalf :
                        xTo = x+48;
                        yTo = y+48;
                        break;
                    case downLeftDistHalf :
                        xTo = x-48;
                        yTo = y+48;
                        break;
                } break;
            
            case "charger":
                if(x != oPlayerBattle.x && y != oPlayerBattle.y){
                    xTo = oPlayerBattle.x;
                    yTo = y;
                    if(position_meeting(xTo,yTo,oEnemyBattle1) or position_meeting(xTo,yTo,oEnemyBattle2) or position_meeting(xTo,yTo,oEnemyBattle3)){
                        xTo = x;
                        yTo = oPlayerBattle.y;
                        if(position_meeting(xTo,yTo,oEnemyBattle1) or position_meeting(xTo,yTo,oEnemyBattle2) or position_meeting(xTo,yTo,oEnemyBattle3)){
                            xTo = x;
                            yTo = y;
                        }
                    }
                } break;
            
            case "bomber":
                var rCol = instance_position(x+48,y,oBattleThing);
                var lCol = instance_position(x-48,y,oBattleThing);
                var uCol = instance_position(x,y-48,oBattleThing);
                var dCol = instance_position(x,y+48,oBattleThing);
                var urCol = instance_position(x+48,y-48,oBattleThing);
                var ulCol = instance_position(x-48,y-48,oBattleThing);
                var drCol = instance_position(x+48,y+48,oBattleThing);
                var dlCol = instance_position(x-48,y+48,oBattleThing);
                
                var rightDist = point_distance(x+48,y,oPlayerBattle.x,oPlayerBattle.y);
                var leftDist = point_distance(x-48,y,oPlayerBattle.x,oPlayerBattle.y);
                var upDist = point_distance(x,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var downDist = point_distance(x,y+48,oPlayerBattle.x,oPlayerBattle.y);
                var upRightDist = point_distance(x+48,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var upLeftDist = point_distance(x-48,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var downLeftDist = point_distance(x-48,y+48,oPlayerBattle.x,oPlayerBattle.y);
                var downRightDist = point_distance(x+48,y+48,oPlayerBattle.x,oPlayerBattle.y);
                
                if(rCol != noone or !instance_position(x+48,y,oSpace)) rightDist = 999;
                if(lCol != noone or !instance_position(x-48,y,oSpace)) leftDist = 999;
                if(uCol != noone or !instance_position(x,y-48,oSpace)) upDist = 999;
                if(dCol != noone or !instance_position(x,y+48,oSpace)) downDist = 999;
                if(urCol != noone or !instance_position(x+48,y-48,oSpace)) upRightDist = 999;
                if(ulCol != noone or !instance_position(x-48,y-48,oSpace)) upLeftDist = 999;
                if(drCol != noone or !instance_position(x+48,y+48,oSpace)) downRightDist = 999;
                if(dlCol != noone or !instance_position(x-48,y+48,oSpace)) downLeftDist = 999;
                
                targetCoords = min(rightDist,leftDist,upDist,downDist,upRightDist,upLeftDist,downRightDist,downLeftDist);
                switch (targetCoords){
                    case rightDist :
                        xTo = x+48;
                        yTo = y;
                        break;
                    case leftDist :
                        xTo = x-48;
                        yTo = y;
                        break;
                    case upDist :
                        xTo = x;
                        yTo = y-48;
                        break;
                    case downDist :
                        xTo = x;
                        yTo = y+48;
                        break;
                    case upRightDist :
                        xTo = x+48;
                        yTo = y-48;
                        break;
                    case upLeftDist :
                        xTo = x-48;
                        yTo = y-48;
                        break;
                    case downRightDist :
                        xTo = x+48;
                        yTo = y+48;
                        break;
                    case downLeftDist :
                        xTo = x-48;
                        yTo = y+48;
                        break;
                } 
                hasAttacked = true;
                //if(point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y) < 136) 
                instance_create_layer(x,y,"Instances",oBomb);
                break;
            
            case "immove":
            case "ballistaStraight":
            case "ballistaDiag":
            case "ballistaAll":
                xTo = x;
                yTo = y;
                shouldStartMoving = true;
                break;
            
            case "unstop":
                if(x > oPlayerBattle.x && y > oPlayerBattle.y){
                    xTo = oPlayerBattle.x-48;
                    yTo = oPlayerBattle.y-48;
                }
                else if(x < oPlayerBattle.x && y > oPlayerBattle.y){
                    xTo = oPlayerBattle.x+48;
                    yTo = oPlayerBattle.y-48;
                }
                else if(x > oPlayerBattle.x && y < oPlayerBattle.y){
                    xTo = oPlayerBattle.x-48;
                    yTo = oPlayerBattle.y+48;
                }
                else if(x < oPlayerBattle.x && y < oPlayerBattle.y){
                    xTo = oPlayerBattle.x+48;
                    yTo = oPlayerBattle.y+48;
                } 
                else{
                    xTo = oPlayerBattle.x+48;
                    yTo = oPlayerBattle.y+48;
                }
                break;
            
            case "energy":
                var rCol = instance_position(x+48,y,oEnemyBattle2)
                var lCol = instance_position(x-48,y,oEnemyBattle2)
                var uCol = instance_position(x,y-48,oEnemyBattle2)
                var dCol = instance_position(x,y+48,oEnemyBattle2)
                var urCol = instance_position(x+48,y-48,oEnemyBattle2)
                var ulCol = instance_position(x-48,y-48,oEnemyBattle2)
                var drCol = instance_position(x+48,y+48,oEnemyBattle2)
                var dlCol = instance_position(x-48,y+48,oEnemyBattle2)
                
                var rightDist = point_distance(x+48,y,oPlayerBattle.x,oPlayerBattle.y);
                var leftDist = point_distance(x-48,y,oPlayerBattle.x,oPlayerBattle.y);
                var upDist = point_distance(x,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var downDist = point_distance(x,y+48,oPlayerBattle.x,oPlayerBattle.y);
                var upRightDist = point_distance(x+48,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var upLeftDist = point_distance(x-48,y-48,oPlayerBattle.x,oPlayerBattle.y);
                var downLeftDist = point_distance(x-48,y+48,oPlayerBattle.x,oPlayerBattle.y);
                var downRightDist = point_distance(x+48,y+48,oPlayerBattle.x,oPlayerBattle.y);
                
                if(rCol != noone or !instance_position(x+96,y,oSpace)) rightDist = 9999;
                if(lCol != noone or !instance_position(x-96,y,oSpace)) leftDist = 9999;
                if(uCol != noone or !instance_position(x,y-96,oSpace)) upDist = 9999;
                if(dCol != noone or !instance_position(x,y+96,oSpace)) downDist = 9999;
                if(urCol != noone or !instance_position(x+96,y-96,oSpace)) upRightDist = 9999;
                if(ulCol != noone or !instance_position(x-96,y-96,oSpace)) upLeftDist = 9999;
                if(drCol != noone or !instance_position(x+96,y+96,oSpace)) downRightDist = 9999;
                if(dlCol != noone or !instance_position(x-96,y+96,oSpace)) downLeftDist = 9999;
                
                targetCoords = min(rightDist,leftDist,upDist,downDist,upRightDist,upLeftDist,downRightDist,downLeftDist);
                switch (targetCoords){
                	case rightDist :
                        xTo = x+48;
                        yTo = y;
                        break;
                    case leftDist :
                        xTo = x-48;
                        yTo = y;
                        break;
                    case upDist :
                        xTo = x;
                        yTo = y-48;
                        break;
                    case downDist :
                        xTo = x;
                        yTo = y+48;
                        break;
                    case upRightDist :
                        xTo = x+48;
                        yTo = y-48;
                        break;
                    case upLeftDist :
                        xTo = x-48;
                        yTo = y-48;
                        break;
                    case downRightDist :
                        xTo = x+48;
                        yTo = y+48;
                        break;
                    case downLeftDist :
                        xTo = x-48;
                        yTo = y+48;
                        break;
                } break;
            
            case "library":
                var ranX = floor(random_range(1,5));
                var ranY = floor(random_range(1,5));
                var mover = instance_create_layer(x,y,"Instances",oLibraryMover);
                xTo = (ranX*48)+82;
                yTo = (ranY*48)+3;
                if(xTo == x && yTo == y) xTo += 48;
                mover.parent = id;
                break;
            
            case "machine":
                xTo = x;
                yTo = y;
                hasAttacked = true;
                hasMoved = true; break;
            
            case "inverse":
                var rCol = instance_position(oPlayerBattle.x+144,oPlayerBattle.y,oBattleThing);
                var lCol = instance_position(oPlayerBattle.x-144,oPlayerBattle.y,oBattleThing);
                var uCol = instance_position(oPlayerBattle.x,oPlayerBattle.y-144,oBattleThing);
                var dCol = instance_position(oPlayerBattle.x,oPlayerBattle.y+144,oBattleThing);
                var urCol = instance_position(oPlayerBattle.x+144,oPlayerBattle.y-144,oBattleThing);
                var ulCol = instance_position(oPlayerBattle.x-144,oPlayerBattle.y-144,oBattleThing);
                var drCol = instance_position(oPlayerBattle.x+144,oPlayerBattle.y+144,oBattleThing);
                var dlCol = instance_position(oPlayerBattle.x-144,oPlayerBattle.y+144,oBattleThing);
                
                var rightDist = point_distance(x,y,oPlayerBattle.x+144,oPlayerBattle.y);
                var leftDist = point_distance(x,y,oPlayerBattle.x-144,oPlayerBattle.y);
                var upDist = point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y-144);
                var downDist = point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y+144);
                var upRightDist = point_distance(x,y,oPlayerBattle.x+144,oPlayerBattle.y-144);
                var upLeftDist = point_distance(x,y,oPlayerBattle.x-144,oPlayerBattle.y-144);
                var downLeftDist = point_distance(x,y,oPlayerBattle.x-144,oPlayerBattle.y+144);
                var downRightDist = point_distance(x,y,oPlayerBattle.x+144,oPlayerBattle.y+144);
                
                if(rCol != noone or !instance_position(oPlayerBattle.x+144,oPlayerBattle.y,oSpace)) rightDist = 999;
                if(lCol != noone or !instance_position(oPlayerBattle.x-144,oPlayerBattle.y,oSpace)) leftDist = 999;
                if(uCol != noone or !instance_position(oPlayerBattle.x,oPlayerBattle.y-144,oSpace)) upDist = 999;
                if(dCol != noone or !instance_position(oPlayerBattle.x,oPlayerBattle.y+144,oSpace)) downDist = 999;
                if(urCol != noone or !instance_position(oPlayerBattle.x+144,oPlayerBattle.y-144,oSpace)) upRightDist = 999;
                if(ulCol != noone or !instance_position(oPlayerBattle.x-144,oPlayerBattle.y-144,oSpace)) upLeftDist = 999;
                if(drCol != noone or !instance_position(oPlayerBattle.x+144,oPlayerBattle.y+144,oSpace)) downRightDist = 999;
                if(dlCol != noone or !instance_position(oPlayerBattle.x-144,oPlayerBattle.y+144,oSpace)) downLeftDist = 999;
                
                targetCoords = min(rightDist,leftDist,upDist,downDist,upRightDist,upLeftDist,downRightDist,downLeftDist);
                switch (targetCoords){
                    case rightDist :
                        xTo = oPlayerBattle.x+144;
                        yTo = oPlayerBattle.y;
                        break;
                    case leftDist :
                        xTo = oPlayerBattle.x-144;
                        yTo = oPlayerBattle.y;
                        break;
                    case upDist :
                        xTo = oPlayerBattle.x;
                        yTo = oPlayerBattle.y-144;
                        break;
                    case downDist :
                        xTo = oPlayerBattle.x;
                        yTo = oPlayerBattle.y+144;
                        break;
                    case upRightDist :
                        xTo = oPlayerBattle.x+144;
                        yTo = oPlayerBattle.y-144;
                        break;
                    case upLeftDist :
                        xTo = oPlayerBattle.x-144;
                        yTo = oPlayerBattle.y-144;
                        break;
                    case downRightDist :
                        xTo = oPlayerBattle.x+144;
                        yTo = oPlayerBattle.y+144;
                        break;
                    case downLeftDist :
                        xTo = oPlayerBattle.x-144;
                        yTo = oPlayerBattle.y+144;
                        break;
                /*var listx = array_create(30,0);
                var listy = array_create(30,0);
                with(oSpace){
                    if(point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y) > 70 && point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y) < 140){
                        array_insert(listx, array_length(listx),x);
                        array_insert(listy, array_length(listy),y);
                    }
                }
                xTo = listx[2];
                yTo = listy[2];*/
        } break;
        }
        shouldStartMoving = true;
        sprite_index = sprmove;
        if(xTo < x) image_xscale = -1;
        else image_xscale = 1;
    }
    if((xTo == oPlayerBattle.x && yTo == oPlayerBattle.y) or (xTo == oBattleThing.x && yTo == oBattleThing.y)){
        if(name != "library"){
            xTo = x;
            yTo = y;
        }
    }
    
    var distanceToGo = point_distance(x,y,xTo,yTo);
    if(distanceToGo > spd && name != "library"){
        move_towards_point(xTo,yTo,spd);
    }
    else if(name != "library"){
        if(name == "charger" && speed != 0) chargerMoved = true;
        x = xTo;
        y = yTo;
        speed = 0;
        hasMoved = true;
        shouldStartMoving = false;
        if(!chargerMoved) timerAttack = timerMax;
        else hasAttacked = true;
    }
    
    if(name == "unstop" && instance_place(x,y,oPlayerBattle) && !hasAttacked){
        hasAttacked = true;
        hasMoved = true;
        global.hp -= 1;
        oPlayerBattle.xstart = oPlayerBattle.x;
        oPlayerBattle.shakeAmount = oPlayerBattle.shakeAmountMax;
        oPlayerBattle.drawAlpha = 1;
        oBattleManager.phase++;
        oBattleManager.timer = oBattleManager.timerMax;
    }
}