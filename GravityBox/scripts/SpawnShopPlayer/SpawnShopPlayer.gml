// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnShopPlayer()
{
	if(instance_exists(oShopPlayer)) instance_destroy(oShopPlayer);
	newShopPlayer = instance_create_layer(400,88,"Instances",oShopPlayer);
	newShopPlayer.playerNum = global.currentShopSelection;
}