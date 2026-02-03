function MatrixOutputCallback(event)
{   
    // FF_Utils.Print("CALLBACK "+event.eventname)
	if (event.eventname == "matrixoutput") {
		g_tempLetterMat.name = (event.args[0]);        
        // VERTICES and NORMALS and INDICE
        ConcatMasterVerticesMatrix(g_masterVerticesNormalsIndices, g_tempLetterMat, g_wordIndex);
	}
}
MatrixOutputCallback.local = true;

function ConcatMasterVerticesMatrix(masterMatrix, wordMatrix, wordIndex)
{   
    // UNPACK TEXTURE COORDINATES FROM WORD MATRIX INTO TEMP MASTER COORD
    g_unpack.jump = 2;
    g_unpack.offset = 3;
    g_tempWordTexcoordMatrix.dim = wordMatrix.dim;
    g_unpack.matrixcalc(wordMatrix, g_tempWordTexcoordMatrix);

    // Fill plane ad index 3 with the word index, used in the shader
    wordMatrix.fillplane(3, wordIndex);

    // If "!use_individual_texcoord", use the index of the word to calculate texture coordinates
    // It will only use the X coordinates and assign a single pixel of the texture to the whole word
    if (!use_individual_texcoord) {
        var texcoord = (1 / g_localInputParamMatrices.positionMat.dim) * g_wordIndex;
        g_tempWordTexcoordMatrix.fillplane(0, texcoord);
        g_tempWordTexcoordMatrix.fillplane(1, 0);
    }

    // Create a temp matrix on which the concatenation of the master matrix 
    // plus the new word matrix will be copied
    var g_tempMasterVertNormMatIndices = new JitterMatrix(8, "float32", masterMatrix.dim[0] + wordMatrix.dim);
    g_tempMasterVertNormMatIndices.adapt = 0; 

    // Concat the temporary master to the new matrix, and fill the master matrix with the result
    g_concat.matrixcalc([wordMatrix, masterMatrix], g_tempMasterVertNormMatIndices); 
    // The masterMatrix becomes the matrix with the concatenated result
    masterMatrix.name = g_tempMasterVertNormMatIndices.name;
    // Free memory of the temp matrix
    g_tempMasterVertNormMatIndices.freepeer();

    // Concatenation of texcoord for all the vertices.
    // Same mechanism as for the master matrix with vertices indices and normals.
    g_tempCopyMasterTexcoord = new JitterMatrix();
    g_tempCopyMasterTexcoord.adapt = 1;
    g_concat.matrixcalc([g_tempWordTexcoordMatrix, g_masterTexCoordMat], g_tempCopyMasterTexcoord);
    g_masterTexCoordMat.name = g_tempCopyMasterTexcoord.name;
    g_tempCopyMasterTexcoord.freepeer();

}
ConcatMasterVerticesMatrix.local = true;