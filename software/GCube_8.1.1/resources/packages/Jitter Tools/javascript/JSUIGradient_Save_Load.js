

function write(path) {
	saveDictToPath(path);
}

function read(path) {
	loadSaveDict(path);
}

function getvalueof() {
	// FF_Utils.Print("GETVALUEOF");
	return buildSaveDict(null);
}

function setvalueof(dict) {
	// FF_Utils.Print("SETVALUEOF");
	loadFromDict(dict);
}

function buildSaveDict() {
	var saveDict = new Dict();

	// var percentages = [];
	// for (var pointer in pointers)
	// {
	// 	percentages.push(pointers[pointer].GetPercentage());
	// }
	var colors = [];
	for (var pointer in pointers)
	{
		colors.push(pointers[pointer].GetColor());
	}
	var positions = [];
	for (var pointer in pointers)
	{
		positions.push(pointers[pointer].GetPosition());
	}
	// FF_Utils.Print("SAVE COLORS "+colors);
	// FF_Utils.Print("SAVE POS "+positions);
	saveDict.replace("pointers_colors", JSON.stringify(colors));	
	saveDict.replace("pointers_positions", JSON.stringify(positions));	
	return saveDict;
}
buildSaveDict.local = 1;

function saveDictToPath(path) {
	var saveDict = buildSaveDict();
	saveDict.export_json(path);
}
saveDictToPath.local = 1;

function loadSaveDict(path) {
	var saveDict = new Dict();
	saveDict.import_json(path);
	
	loadFromDict(saveDict);
}
loadSaveDict.local = 1;

function loadFromDict(saveDict) {
	var colors = JSON.parse(saveDict.get("pointers_colors"));
	var positions = JSON.parse(saveDict.get("pointers_positions"));
	// FF_Utils.Print("READ POS "+positions);
	// FF_Utils.Print("READ COL "+colors.length);
	gPointerSelected = -1;

	pointers = {};
	Create_N_Pointers(colors.length, colors, positions);
	GetSmallestPercentagePointer();
	DrawAll();
	// if (Object.keys(pointers).length > 0) 
	// {	
	// 	for (var pointer in pointers) 
	// 	{
	// 		pointers[pointer].SetPercentage(percentages[i]);
	// 		pointers[pointer].Reposition();
	// 	}
	// 	GetSmallestPercentagePointer();
	// }

}
loadFromDict.local = 1;

