
var FF_Utils = 
{
	DegToRad: function(degrees)
	{
		return degrees * Math.PI / 180;
	},

	RadToDeg: function(rad)
	{
		return (rad * 180) / Math.PI;
	},

	Print: function()
	{	
		post(arguments[0]);
		if (arguments.length > 1) {
			post(': ');
		}
		for (var i = 1; i < arguments.length; i++) {
			post(arguments[i]);
		}
		post();
	},

	Map: function(value, low1, high1, low2, high2) {
		return low2 + (high2 - low2) * (value - low1) / (high1 - low1);
	},

	Clamp: function(num, min, max) {
		return Math.min(Math.max(num, min), max);
	},

	Random: function(min, maxVal) {
		if(typeof maxVal != 'undefined') {
		return Math.random() * (maxVal - min) + min;
		} else {
			return Math.random() * min;
		}
	},

	Sign: function(x)
	{
		return ((x > 0) - (x < 0)) || +x;
	},

	GetFileExtensionFromPath: function(path)
	{
		return path.split('.').pop();
	}, 

	GetFileNameFromPath: function(fileName)
	{
		return fileName.replace(/^.*[\\\/]/, '');
	},

	GetPathParent: function(tempPath, howManyStepsBack)
    {
        var tempPathArr = tempPath.split("/");
        for (var i=0; i<howManyStepsBack; i++) {
            tempPathArr.pop();
        }
        var newPath = "";
        for(var c=0; c<tempPathArr.length-1; c++)
        {
            newPath += tempPathArr[c] + "/";
        }
        return newPath;
    },

	GetPatcherRect: function(thispatcherObj)
	{
		var rect = [thispatcherObj.box.rect[0],  thispatcherObj.box.rect[1],
					thispatcherObj.box.rect[2] - thispatcherObj.box.rect[0],
					thispatcherObj.box.rect[3] - thispatcherObj.box.rect[1]];
		// var rect = thispatcherObj.wind.location;
		return rect.slice(); 
	},

	ReadFileToString: function(path) 
    {
        var f = new File(path);
        var content = "";
        while(f.isopen && f.position < f.eof){
            content += (f.readline());
        }
        f.close();
        f.freepeer();
        return content;
    }
}

