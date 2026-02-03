function patcherargs()
{
    const MAX_INLETS = 10;

    var args = arrayfromargs(arguments);
    var inletsNumber = 1;
    g_inletsArray = [];

    if (args.length == 1)
    {
        if (typeof(args[0]) == "string") {
            // FF_Utils.Print("IS STRING")
            SetDrawto(args[0]);
            inletsNumber = 2;
        } else {
            // FF_Utils.Print("IS NUMBER")
            inletsNumber = Math.min(args[0], MAX_INLETS);
        }
    } else if (args.length == 2) {
        // FF_Utils.Print(args)
        if (typeof(args[0]) == "string") {
            SetDrawto(args[0]);
        } 
        if (typeof(args[1] == "number")) {
            inletsNumber = Math.min(args[1], MAX_INLETS);
        }
    } else if (args.length == 3) {
        error("jit.gl.textmult only accepts two arguments.");
    }

    CreateInlets(inletsNumber);
}

//-------------------------------
// INLETS STUFF
function CreateInlets(inletsNumber)
{
    this.patcher.apply(IterFun);

    if (inletsNumber <= inlets) {
        for (var i=inletsNumber; i<(inlets); i++) {
            this.patcher.remove(g_inletsArray[i]);
        }
    }
}
CreateInlets.local = true;

function IterFun(b)
{
    if (b.maxclass == "inlet") {
        g_inletsArray.push(b);
    }
}
IterFun.local = true;