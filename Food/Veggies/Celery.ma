//Maya ASCII 2023 scene
//Name: Celery.ma
//Last modified: Thu, Mar 23, 2023 05:48:21 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
requires "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 23419)";
fileInfo "UUID" "E16D8465-44FB-DCFC-2810-45AF89F47BA2";
createNode transform -n "Celery";
	rename -uid "FB4B88DE-4FCC-8FE1-67BB-55B5DE1EA6A9";
	setAttr ".t" -type "double3" -5.5436191323118784 32.751625338326868 -11.536402275130285 ;
	setAttr ".s" -type "double3" 0.088596487136495136 0.2442929058136088 0.088596487136495136 ;
createNode mesh -n "CeleryShape" -p "Celery";
	rename -uid "AAD96391-41AE-DA14-78BC-6099A2527E45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4874998927116394 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode polyNormal -n "polyNormal1";
	rename -uid "B6A9CA2D-4469-D3A3-B848-8C965B2632CC";
	setAttr ".ics" -type "componentList" 1 "f[0:41]";
	setAttr ".unm" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "5897A252-4157-1DEC-69FB-E5877685CB8E";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk[22:43]" -type "float3"  -0.30515867 -0.046438668 0.61031735
		 -0.11656009 -0.046438668 0.58044589 -0.11656009 0.046438668 0.58044589 -0.30515867
		 0.046438668 0.61031735 0.053576902 -0.046438668 0.49375686 0.053576902 0.046438668
		 0.49375686 0.18859828 -0.046438668 0.35873523 0.18859828 0.046438668 0.35873523 0.27528751
		 -0.046438668 0.18859816 0.27528751 0.046438668 0.18859816 0.30515867 -0.046438668
		 -1.0913322e-07 0.30515867 0.046438668 -1.0913322e-07 0.27528751 -0.046438668 -0.18859854
		 0.27528751 0.046438668 -0.18859854 0.18859829 -0.046438668 -0.35873535 0.18859829
		 0.046438668 -0.35873535 0.053576834 -0.046438668 -0.49375698 0.053576834 0.046438668
		 -0.49375698 -0.11656015 -0.046438668 -0.58044589 -0.11656015 0.046438668 -0.58044589
		 -0.30515867 -0.046438668 -0.61031735 -0.30515867 0.046438668 -0.61031735;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "F4A90F1A-4DEE-00E8-8E17-69AE56F461EA";
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.0000005 0 -7.1525574e-07 ;
	setAttr ".rs" 47535;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.0000009536743164 -5 -4.0000019073486328 ;
	setAttr ".cbx" -type "double3" 0 5 4.0000004768371582 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "AD48A87F-4165-9968-C9F3-67B1AFEE0C6E";
	setAttr ".dc" -type "componentList" 1 "f[10:29]";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "DC2CEDD5-4CDD-B2EF-2369-D0A16408A203";
	setAttr ".dc" -type "componentList" 4 "f[0:3]" "f[14:23]" "f[34:43]" "f[54:59]";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "DF84802B-463F-A825-189E-0E970ADBF09A";
	setAttr ".r" 4;
	setAttr ".h" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
select -ne :time1;
	setAttr ".o" 101;
	setAttr ".unw" 101;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 24 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 15 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyNormal1.out" "CeleryShape.i";
connectAttr "polyTweak1.out" "polyNormal1.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "deleteComponent2.og" "polyExtrudeFace1.ip";
connectAttr "CeleryShape.wm" "polyExtrudeFace1.mp";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "CeleryShape.iog" ":initialShadingGroup.dsm" -na;
// End of Celery.ma
