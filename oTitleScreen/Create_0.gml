loadingStarted = false;
menuSprite = noone;
optionSelected = 0;
optionAmount = 0;

canMove = true;

var fileName = "saveFile.sav";
if(file_exists(fileName))
{
    slotData = LoadJsonFromFile(fileName);
    menuSprite = sTitleMenuContinue;
    optionAmount = 2;
}
else 
{
    slotData = -1;
    menuSprite = sTitleMenu
    optionAmount = 1;
}
