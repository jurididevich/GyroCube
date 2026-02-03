var drawto = null;
var implicitdrawto = "";
var swaplisten = null; // The listener for the jit.world
var explicitdrawto = false;

// ensure jit.proxy created first, as jit_gl_implicit won't be found if Jitter not already initialized
var proxy = new JitterObject("jit.proxy");
var implicit_tracker = new JitterObject("jit_gl_implicit");
// postln("implicit tracker name: "+implicit_tracker.name)
var implicit_lstnr = new JitterListener(implicit_tracker.name, implicit_callback);

function implicit_callback(event) { 
	if(!explicitdrawto && implicitdrawto != implicit_tracker.drawto[0]) {
		// important! drawto is an array so get first element
		implicitdrawto = implicit_tracker.drawto[0];
		dosetdrawto(implicitdrawto);
        // FF_Utils.Print("Implicit Callback")
	}
}
implicit_callback.local = true;

function setDrawto(val) {
	// FF_Utils.Print("EXPLICIT DRAWTO "+val)
	explicitdrawto = true;
	dosetdrawto(val);
}

function dosetdrawto(newdrawto) {
	if(newdrawto == drawto || !newdrawto) {
		// bounce
		return;
	}
	//postln("drawto class " + proxy.class);
	if(proxy !== undefined && !explicitdrawto) {
		proxy.name = newdrawto;
		// FF_Utils.Print("PROXY NAME "+proxy.name)
		//postln("drawto class " + proxy.class);
		if(proxy.class !== undefined) {
			// drawto may be root render or sub-node
			// if root the class will return jit_gl_context_view
			if(proxy.class != "jit_gl_context_view") {
				// class is a sub-node, get the drawto on that
				proxydrawto = proxy.send("getdrawto");
				// recurse until we get root
				// important! drawto is an array so get first element
				return dosetdrawto(proxydrawto[0]);
			}
		}
		else {
			proxydrawto = proxy.send("getdrawto");
			if(proxydrawto !== null && proxydrawto !== undefined) {
				return dosetdrawto(proxydrawto[0]);  // name of the internal node
			}
		}
	}
	// post("setdrawto " + newdrawto);
	drawto = newdrawto;	

	if (this.textObj != null) {
		this.textObj.SetDrawto(drawto);
	}
    g_texture.SetDrawto(drawto);
    g_TFShader.drawto = drawto;
    g_mesh.drawto = drawto;
	// FF_Utils.Print("MESH DRAWTO "+g_mesh.drawto)

	// IN CASE WE NEED THE BANG FROM THE CONTEXT
	// if(swaplisten)
	// 	swaplisten.subjectname = "";
	// swaplisten = new JitterListener(drawto, swapcallback);
}
dosetdrawto.local = true;

// BANG FROM THE CONTEXT
// function swapcallback(event)
// {
// 	if (enable)
// 	{
// 		// post("callback: " + event.subjectname + " sent "+ event.eventname + " with (" + event.args + ")\n");			
// 		switch (event.eventname) {
// 			// if context is root we use swap, if jit.gl.node use draw
// 			case ("swap" || "draw"):
// 				FF_Utils.Print("OUTPUT MATRIX")
// 				if (output_matrix) {
					
// 					outlet(0, g_masterVertMat.name);
// 				}
// 				break;

// 			default:
// 				break;
// 		}
// 	}
// }