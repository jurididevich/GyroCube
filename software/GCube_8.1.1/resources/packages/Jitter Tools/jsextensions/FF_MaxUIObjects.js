function FF_MaxUIObject(p, pos, size)
{   
    this.p = p;
    this.pos = pos.slice();
    this.size = size.slice();
    this.maxUIObj = new Object();
    this.maxUIObjListener = null;
    this.width = this.size[0];
    this.height = this.size[1];
}

FF_MaxUIObject.prototype.SetVarname = function(varname)
{
    if (varname) {
        this.maxUIObj.varname = varname
    } else {
        this.maxUIObj.varname = "number_"+Math.floor(Math.random()*10000);
    }
}

// to point the created Max obj to this obj
FF_MaxUIObject.prototype.PairUIObj = function(obj) 
{
    this.maxUIObj = obj;
}

FF_MaxUIObject.prototype.AssignCallback = function(callback)
{
    this.maxUIObjListener = new MaxobjListener(this.maxUIObj, callback);
}

FF_MaxUIObject.prototype.Hide = function(val)
{
    this.maxUIObj.hidden = val;
}

FF_MaxUIObject.prototype.IgnoreClick = function(val)
{
    this.maxUIObj.ignoreclick = val;
}

FF_MaxUIObject.prototype.SendToBack = function()
{
    this.p.script("sendtoback", this.maxUIObj.varname);
}

FF_MaxUIObject.prototype.BringToFront = function()
{
    this.p.script("bringtofront", this.maxUIObj.varname);
}

FF_MaxUIObject.prototype.SetPosition = function(pos)
{   
    this.pos = pos.slice();
    this.p.script("sendbox", this.maxUIObj.varname, "patching_position", this.pos);
}

FF_MaxUIObject.prototype.Resize = function(size)
{   
    this.size = size.slice();
    this.width = size[0];
    this.height = size[1];
    this.p.script("sendbox", this.maxUIObj.varname, "patching_rect", this.pos, this.size);
}

// For using properties of objects inside callbacks
FF_MaxUIObject.prototype.AssignPropertyToMaxObj = function(prop, val)
{
    this.maxUIObj[prop] = val;
}

FF_MaxUIObject.prototype.SetFontSize = function(val)
{
    this.maxUIObj.fontsize(val);
}

FF_MaxUIObject.prototype.SetBGColor = function(color)
{
    this.maxUIObj.bgcolor(color);
}

FF_MaxUIObject.prototype.GetPosition = function()
{
    return this.pos;
}

FF_MaxUIObject.prototype.GetSize = function()
{
    return this.size;
}

FF_MaxUIObject.prototype.GetMaxObj = function()
{
    return this.maxUIObj;
}

FF_MaxUIObject.prototype.Destroy = function()
{
    this.p.remove(this.maxUIObj);
}

//-------------------------------------------------------------------------------

function FF_Number(p, pos, size, varname, type)
{
    FF_MaxUIObject.call(this, p, pos, size);

    this.number = null;
    this.Init(type);
    this.PairUIObj(this.number);
    this.SetVarname(varname);
    this.SetPosition(this.pos);
    this.Resize(this.size);
}

FF_Number.prototype = Object.create(FF_MaxUIObject.prototype);
FF_Number.prototype.constructor = FF_Number;

FF_Number.prototype.Init = function(type)
{   
    if (type == "flonum") {
        this.number = this.p.newdefault(this.pos,"flonum");
    } else {
        this.number = this.p.newdefault(this.pos,"number");
    }
}

//-------------------------------------------------------------------------------

function FF_MessageBox(p, pos, size, varname)
{
    FF_MaxUIObject.call(this, p, pos, size);

    this.messageBox = null;
    this.Init();
    this.PairUIObj(this.messageBox);
    this.SetVarname(varname);
    this.SetPosition(this.pos);
    this.Resize(this.size);
}

FF_MessageBox.prototype = Object.create(FF_MaxUIObject.prototype);
FF_MessageBox.prototype.constructor = FF_MessageBox;

FF_MessageBox.prototype.Init = function()
{   
    this.messageBox = this.p.newdefault(0,0, "message");
}

FF_MessageBox.prototype.Set = function(message)
{
    this.messageBox.set(message);
}

//-------------------------------------------------------------------------------

function FF_Textedit(p, pos, size, varname)
{
    FF_MaxUIObject.call(this, p, pos, size);

    this.textedit = null;
    this.Init();
    this.PairUIObj(this.textedit);
    this.SetVarname(varname);
    this.SetPosition(this.pos);
    this.Resize(this.size);
}

FF_Textedit.prototype = Object.create(FF_MaxUIObject.prototype);
FF_Textedit.prototype.constructor = FF_Textedit;

FF_Textedit.prototype.Init = function()
{   
    this.textedit = this.p.newdefault(0,0, "textedit");
}

FF_Textedit.prototype.SetText = function(text)
{
    this.textedit.set(text);
}

FF_Textedit.prototype.SetFont = function(font)
{
    this.textedit.fontname(font);
}

FF_Textedit.prototype.CornersRoundness = function(val)
{
    this.textedit.rounded(val);
}

//-------------------------------------------------------------------------------
// BUTTONS 

function FF_Button(p, pos, size, varname)
{
    FF_MaxUIObject.call(this, p, pos, size);

    this.button = null;
    this.Init();
    this.PairUIObj(this.button);
    this.SetVarname(varname);
    this.SetPosition(this.pos);
    this.Resize(this.size);
}

FF_Button.prototype = Object.create(FF_MaxUIObject.prototype);
FF_Button.prototype.constructor = FF_Button;

FF_Button.prototype.Init = function()
{
    this.button = this.p.newdefault(0,0,"button");
}
//---------------------------------