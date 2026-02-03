// ATTRIBUTES 

var align = 1;
declareattribute("align", null, "SetAlign", 0);
var automatic = 1;
declareattribute("automatic", null, "SetAutomatic", 0);
var enable = 1;
declareattribute("enable", null, "SetEnable", 0);
var blend = "alphablend";
declareattribute("blend", null, "SetBlend", 0);
var blend_enable = 0;
declareattribute("blend_enable", null, "SetBlendEnable", 0);
var depth_enable = 1;
declareattribute("depth_enable", null, "SetDepthEnable", 0);
var lighting_enable = 0;
declareattribute("lighting_enable", null, "SetLightingEnable", 0);
var smooth_shading = 0;
declareattribute("smooth_shading", null, "SetSmoothShading", 0);

// drawto declared in multiple_text_grab_context.js
declareattribute("drawto", null, "SetDrawto", 0);
var layer = 0;
declareattribute("layer", null, "SetLayer", 0);
var material = "";
declareattribute("material", null, "SetMaterial", 0);
var mode = "3d";
declareattribute("mode", null, "SetMode", 0);
var glparams = ["position", "scale"];
declareattribute("glparams", null, "SetGLParams", 0);
var poly_mode = [0,0];
declareattribute("poly_mode", null, "SetPolyMode", 0);
var position = [0,0,0];
declareattribute("position", null, "SetPosition", 0);
var scale = [1,1,1];
declareattribute("scale", null, "SetScale", 0);
var rotatexyz = [0,0,0];
declareattribute("rotatexyz", null, "SetRotateXYZ", 0);
var split_letters = false;
//declareattribute("split_letters", null, "SetSplitLetters", 0);
var texture = null;
declareattribute("texture", null, "SetTexture", 0);
var use_individual_texcoord = true;
declareattribute("use_individual_texcoord", null, "SetUseIndividualTexcoord", 0);
var weight = 0;
declareattribute("weight", null, "SetWeight", 0);
var font = ""
declareattribute("font", null, "SetFont", 0);
var depth = 0.2;
declareattribute("depth", null, "SetDepth", 0);
// var output_matrix = false;
// declareattribute("output_matrix", null, "SetOutputMatrix", 0);

//-------------------------
// ATTRIBUTE SETTERS
function SetAutomatic(val)
{
    automatic = val;
    g_mesh.automatic = val;
}
SetAutomatic.local = true;

function SetDrawto(val)
{
    setDrawto(val);
}
SetDrawto.local = true;

function SetLayer(val)
{   
    layer = val;
    g_mesh.layer = val;
}
SetLayer.local = true;

function SetBlend(blend_)
{
    blend = blend_;
    g_mesh.blend = blend_;
}
SetBlend.local = true;

function SetBlendEnable(val)
{
    blend_enable = val;
    g_mesh.blend_enable = val;
}
SetBlendEnable.local = true;

function SetDepthEnable(val)
{
    depth_enable = val;
    g_mesh.depth_enable = val;
}
SetDepthEnable.local = true;

function SetLightingEnable(val)
{
    lighting_enable = val;
    g_mesh.lighting_enable = val;
}
SetDepthEnable.local = true;

function SetSmoothShading(val)
{
    smooth_shading = val;
    g_mesh.smooth_shading = val;
}
SetDepthEnable.local = true;

function SetEnable(enable_)
{
    enable = enable_;
    g_texture.Enable(enable_);
    g_buffers.Enable(enable_);
    g_mesh.enable = enable_;
    g_TFShader.enable = enable_;
    g_TF.enable = enable_;
}
SetEnable.local = true;

function SetGLParams() 
{
    g_glParams = arrayfromargs(arguments);
    glparams = arrayfromargs(arguments);
}
SetGLParams.local = true;

function SetMaterial(matName) 
{   
    material = matName;
    g_mesh.material = matName;
}
SetMaterial.local = true;

function SetPolyMode(polyX, polyY)
{
    poly_mode = [polyX, polyY];
    g_mesh.poly_mode = poly_mode;
}
SetPolyMode.local = true;

function SetPosition(posX, posY, posZ)
{
    position = [posX, posY, posZ];
    g_mesh.position = position;
}
SetPosition.local = true;

function SetAlign(textAlign) // CAUSES TO RECREATE TEXTS
{
    align = textAlign;
    g_textObj.SetAlign(textAlign);
    //InitDrawAssign();
}
SetAlign.local = true;

function SetMode(modeText)  // CAUSES TO RECREATE TEXTS
{   
    mode = modeText;
    g_textObj.SetMode(mode);
    //InitDrawAssign();
}
SetMode.local = true;

function SetDepth(newDepth) // CAUSES TO RECREATE TEXTS
{
    depth = newDepth;
    g_textObj.SetDepth(newDepth);
    InitDrawAssign();
}
SetDepth.local = true;

function SetFont() // CAUSES TO RECREATE TEXTS
{
    g_fontsArray = arrayfromargs(arguments);
}
SetFont.local = true;

// function SetOutputMatrix(val)
// {
//     output_matrix = val;
// }
// SetOutputMatrix.local = true;

function SetScale(scaleX, scaleY, scaleZ)  
{   
    scale = scaleX;
    g_mesh.scale = scaleX;
    if (scaleY) {
        g_mesh.scale = [scaleX, scaleY, g_mesh.scale[2]];
        scale = [scaleX, scaleY, g_mesh.scale[2]];
    } 
    if (scaleZ) {
        g_mesh.scale = [scaleX, scaleY, scaleZ];
        scale = [scaleX, scaleY, scaleZ];
    }
}
SetScale.local = true;

function SetRotateXYZ(posX, posY, posZ)
{
    rotatexyz = [posX, posY, posZ];
    g_mesh.rotatexyz = rotatexyz;
}
SetRotateXYZ.local = true;

function SetSplitLetters(val) 
{
    split_letters = val;
}
SetSplitLetters.local = true;

function SetTexture()
{   
    var texNames = arrayfromargs(arguments);
    texture = texNames;
    g_mesh.texture = texNames;
}
SetTexture.local = true;

function SetUseIndividualTexcoord(val) // CAUSES TO RECREATE TEXTS
{
    use_individual_texcoord = val;
    InitDrawAssign();
}
SetUseIndividualTexcoord.local = true;

function SetWeight(val)  // CAUSES TO RECREATE TEXTS
{   
    weight = val;
    if (g_textObj == null) {
        CreateTextObjs();
    }
    g_textObj.SetWeight(weight);
    InitDrawAssign();
}
SetWeight.local = true;