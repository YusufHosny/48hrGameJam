
function NewTextBox(msg){
  var _obj;
  if (instance_exists(oText)) _obj = oTextQueued; else _obj = oText;
  with (instance_create_layer(0,0,"Instances",_obj))
  {
   message = argument[0];
   if(instance_exists(other)) originInstance = other.id else originInstance = noone;
   background = 0;
  }

	with(Player)
	{
		if(!playerLocked)
		{
			playerLocked = true;
		}
	}
}