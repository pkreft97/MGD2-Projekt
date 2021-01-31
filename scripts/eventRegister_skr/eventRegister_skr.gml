///@arg event
///@arg id
///@arg script
///@arg arg1...*

with(eventManager_obj){
	var ev = argument[0]; //Speichert das erste Argument dieser Funktion in "ev"
	var objID = argument[1];
	
	if(!ds_map_exists(eventMap, ev)){
		//Wenn das Event nicht in der Map existiert, wird es, samt Liste mit Listenern, hinzugefügt.
		var listenerList = ds_list_create();
		
		//Add listener info to the eventMap
		ds_map_add_list(eventMap, ev, listenerList);
		
	}else{
		var listenerList = eventMap[? ev]; //speichert die Listener Liste von "ev" in listenerList
	}
	
	//Add listender info
	var listenerInfo;
	
	//Add listener ID
	listenerInfo[0] = objID;
	
	//Add scripts and arguments
	var len = argument_count-2; //Returns number of arguments given at the start.
	var i = 0; repeat(len){
		listenerInfo[i+1] = argument[i+2];
		i++;
	}
	
	//Add listener to listenerList
	ds_list_add(listenerList, listenerInfo);
}