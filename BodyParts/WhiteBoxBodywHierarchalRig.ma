//Maya ASCII 2023 scene
//Name: WhiteBoxBodywHierarchalRig.ma
//Last modified: Fri, Jan 27, 2023 12:32:58 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22623)";
fileInfo "UUID" "73C0FDB6-47F8-B091-877F-FBB591C497DF";
createNode transform -s -n "persp";
	rename -uid "535BEC9B-4193-448A-70AF-03BA791240C6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -22.467812064204125 -3.2460545597188077 3.4918154759897542 ;
	setAttr ".r" -type "double3" -0.60000000000023723 -1162.8000000001657 7.9302457114868115e-16 ;
	setAttr ".rpt" -type "double3" 8.1018386925971054e-17 -2.1030864753834091e-17 -5.0595678966409615e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "85E523D5-486C-FC9D-E4B9-D2BEF31C614D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 22.901309770422507;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0021464656386852576 -3.90719990083646 0.0027774002959021216 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "27D7E844-4640-46CE-A73E-84AD5FE9FFAF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "48637E3C-481B-9950-2BFA-8097940086D0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "4C0AB19B-4971-0D7F-C560-4D96D95342C9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "74147BD7-455D-1556-EA24-679301738F20";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "28997C6D-474B-B606-58AE-DAA4670D56BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6128601C-4F82-243D-96D6-E3AB80576679";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "full_body_01";
	rename -uid "15B39FD2-4D7B-A76D-B981-7FA75B6E600A";
	setAttr ".rp" -type "double3" 0 -2.674397908962499 -1.1589628765451006 ;
	setAttr ".sp" -type "double3" 0 -2.674397908962499 -1.1589628765451006 ;
createNode transform -n "torso" -p "full_body_01";
	rename -uid "2AF9F3FC-4883-21E6-C7A3-F4834CE2A8D3";
	setAttr ".rp" -type "double3" 0 -3.2527773380279541 0 ;
	setAttr ".sp" -type "double3" 0 -3.2527773380279541 0 ;
createNode mesh -n "torsoShape" -p "torso";
	rename -uid "88715A4D-4573-708F-60EF-C789E6FD513C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.026862763 -2.7527773 -0.11356805 
		-0.026862763 -2.7527773 -0.11356805 -0.091635413 -2.6365855 0.043338645 0.091635413 
		-2.6365855 0.043338645 -0.091635413 -2.6365855 -0.043338645 0.091635413 -2.6365855 
		-0.043338645 0.026862763 -2.7527773 0.11356805 -0.026862763 -2.7527773 0.11356805;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null14" -p "torso";
	rename -uid "05A872AC-4641-2F3C-7FAD-6BB30ED3315A";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -1.626887321472168 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "shoulders" -p "null14";
	rename -uid "F1A83FE2-4853-2175-F7BA-31B959C872A8";
createNode mesh -n "shouldersShape" -p "shoulders";
	rename -uid "CC4C85E9-4D17-50F3-BC50-D788AFCB05FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.59163541 -0.48296762 0.54333866 0.59163541 -0.48296762 0.54333866
		 -0.59163541 0 0.54333866 0.59163541 0 0.54333866 -0.59163541 0 -0.54333866 0.59163541 0 -0.54333866
		 -0.59163541 -0.48296762 -0.54333866 0.59163541 -0.48296762 -0.54333866;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null2" -p "shoulders";
	rename -uid "6E0CF645-450F-9EB3-59CD-5A9CA6EBEEBB";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.63991693047800047 -0.24148385545053164 0 ;
	setAttr ".sp" -type "double3" -0.63991693047800047 -0.24148385545053164 0 ;
createNode transform -n "right_arm_01" -p "null2";
	rename -uid "E0C75B27-4396-118C-6C5D-E5A591EF8696";
	setAttr ".rp" -type "double3" -0.63991693047800047 -0.24148385545053164 0 ;
	setAttr ".sp" -type "double3" -0.63991693047799958 -0.24148385545053164 0 ;
createNode mesh -n "right_arm_Shape1" -p "right_arm_01";
	rename -uid "F0143728-4A51-F4CD-2E2D-BDB1CEEBBF64";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.1399169 0.017032102 0.043338656 
		-2.38574 0.013666227 -0.22046381 -0.1399169 -0.50000006 0.043338656 -2.38574 -0.53205234 
		-0.22046381 -0.1399169 -0.50000006 -0.043338686 -2.3857403 -0.53205234 0.22046387 
		-0.1399169 0.017032102 -0.043338686 -2.3857403 0.013666227 0.22046387;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null3" -p "right_arm_01";
	rename -uid "8AFB9A41-4996-48D9-D5F8-06A1F33786F2";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.9293119070846863 -0.24148385545053164 0 ;
	setAttr ".sp" -type "double3" -1.9293119070846863 -0.24148385545053164 0 ;
createNode transform -n "right_arm_02" -p "null3";
	rename -uid "D3AFF902-4C57-275D-2D05-B3A5C1E12736";
	setAttr ".rp" -type "double3" -1.9293119070846863 -0.24148385545053164 0 ;
	setAttr ".sp" -type "double3" -1.9293119070846863 -0.24148385545053164 0 ;
createNode mesh -n "right_arm_Shape2" -p "right_arm_02";
	rename -uid "AFD37E14-4051-B1BD-ECB7-78AD9E5C5B9E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.4293115 0.032244399 -0.23974186 
		-3.6751347 0.081871465 -0.25520015 -1.4293115 -0.56667 -0.23974186 -3.6751347 -0.55479056 
		-0.25520015 -1.4293118 -0.56667 0.23974192 -3.6751349 -0.55479056 0.25520015 -1.4293118 
		0.032244399 0.23974192 -3.6751349 0.081871465 0.25520015;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null5" -p "right_arm_02";
	rename -uid "602B655B-4BA1-F2EE-27C8-96B6552E6842";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -3.2083026168291742 -0.23954364185499744 0 ;
	setAttr ".sp" -type "double3" -3.2083026168291742 -0.23954364185499744 0 ;
createNode transform -n "right_arm_03" -p "null5";
	rename -uid "CC0677DE-4BF0-DB3C-E41C-01ACC0641DA9";
	setAttr ".rp" -type "double3" -3.2083026168291742 -0.23954364185499744 0 ;
	setAttr ".sp" -type "double3" -3.2083026168291746 -0.23954364185499744 0 ;
createNode mesh -n "right_arm_Shape3" -p "right_arm_03";
	rename -uid "0DE9BA26-4228-229C-E7CF-2BB9F9435DFC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -6.4111333 1.6268872 2.3841858e-07 
		-7.7874761 1.6268873 0 -6.4111333 1.6268871 2.3841858e-07 -7.7874761 1.6268873 0 
		-6.4111333 1.6268871 -2.3841858e-07 -7.7874761 1.6268873 0 -6.4111333 1.6268872 -2.3841858e-07 
		-7.7874761 1.6268873 0;
	setAttr -s 8 ".vt[0:7]"  3.20283031 -2.03414011 0.20778914 3.8910017 -2.03414011 0.20778914
		 3.20283031 -1.698722 0.20778914 3.8910017 -1.698722 0.20778914 3.20283031 -1.698722 -0.20778914
		 3.8910017 -1.698722 -0.20778914 3.20283031 -2.03414011 -0.20778914 3.8910017 -2.03414011 -0.20778914;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null6" -p "right_arm_03";
	rename -uid "F61E33F7-4F40-F0F3-C5C6-7384CABBA538";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -3.9261954066450735 -0.23954364185499744 0 ;
	setAttr ".sp" -type "double3" -3.9261954066450735 -0.23954364185499744 0 ;
createNode transform -n "right_arm_04" -p "null6";
	rename -uid "496D1976-4BBD-A019-219B-AE917CDC8918";
	setAttr ".rp" -type "double3" -3.9261954066450735 -0.23954364185499744 0 ;
	setAttr ".sp" -type "double3" -3.926195406645073 -0.23954364185499744 0 ;
createNode mesh -n "right_arm_Shape4" -p "right_arm_04";
	rename -uid "CEB9B035-49C1-DA67-4946-6B8789276547";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -3.4261951 0.10281414 -0.30468369 
		-4.8142157 0.10281414 -0.30468369 -3.4261951 -0.58190161 -0.30468369 -4.8142157 -0.58190161 
		-0.30468369 -3.4261951 -0.58190161 0.30468369 -4.8142157 -0.58190161 0.30468369 -3.4261951 
		0.10281414 0.30468369 -4.8142157 0.10281414 0.30468369;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null7" -p "right_arm_04";
	rename -uid "F7BFE241-4FC2-585A-8E4D-68990DD801A0";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -4.3505118225992545 -0.24473701309959606 0 ;
	setAttr ".sp" -type "double3" -4.3505118225992545 -0.24473701309959606 0 ;
createNode transform -n "right_arm_05" -p "null7";
	rename -uid "15B871FF-4DA9-7CED-2FD7-40AE3E693014";
	setAttr ".rp" -type "double3" -4.3505118225992545 -0.24473701309959606 0 ;
	setAttr ".sp" -type "double3" -4.3505118225992554 -0.24473701309959606 0 ;
createNode mesh -n "right_arm_Shape5" -p "right_arm_05";
	rename -uid "8AF12A5A-4E37-02E1-7C6F-80992143004E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -3.8505123 0.13253362 -0.34794021 
		-5.1525984 0.13253362 -0.34794021 -3.8505123 -0.62200767 -0.34794021 -5.1525984 -0.62200767 
		-0.34794021 -3.8505123 -0.62200767 0.34794021 -5.1525979 -0.62200767 0.34793997 -3.8505123 
		0.13253362 0.34794021 -5.1525979 0.13253362 0.34793997;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null8" -p "shoulders";
	rename -uid "A0D01F7F-4015-8374-D266-8A97DF0A8C5D";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.64420986175537098 -0.24148385545053164 0 ;
	setAttr ".sp" -type "double3" 0.64420986175537098 -0.24148385545053164 0 ;
createNode transform -n "left_arm_01" -p "null8";
	rename -uid "1ED30AFE-461E-4837-1A40-46B6CA0014E1";
	setAttr ".rp" -type "double3" 0.64420986175537098 -0.24148385545053164 0 ;
	setAttr ".sp" -type "double3" 0.64420986175537187 -0.24148385545053164 0 ;
createNode mesh -n "left_arm_Shape1" -p "left_arm_01";
	rename -uid "67D363F7-4097-2E27-A8F1-D7ADAA4078CC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.1442099 0.017032102 0.043338645 
		1.390033 0.013666227 -0.22046381 1.1442099 -0.50000006 0.043338645 1.390033 -0.53205234 
		-0.22046381 1.1442099 -0.50000006 -0.043338645 1.390033 -0.53205234 0.22046381 1.1442099 
		0.017032102 -0.043338645 1.390033 0.013666227 0.22046381;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null9" -p "left_arm_01";
	rename -uid "2D14E2C4-46DE-0E93-B325-8DAAE348BD13";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.9201356475674856 -0.24148385545053164 0 ;
	setAttr ".sp" -type "double3" 1.9201356475674856 -0.24148385545053164 0 ;
createNode transform -n "left_arm_02" -p "null9";
	rename -uid "4C412C73-4294-4AFB-3F89-DAA4576CB80E";
	setAttr ".rp" -type "double3" 1.9201356475674856 -0.24148385545053164 0 ;
	setAttr ".sp" -type "double3" 1.9201356475674856 -0.24148385545053164 0 ;
createNode mesh -n "left_arm_Shape2" -p "left_arm_02";
	rename -uid "F265BFDB-47CC-DF3E-09EC-44BF2E553093";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.4201355 0.032244399 -0.23974198 
		2.6659586 0.081871465 -0.25520012 2.4201355 -0.56667 -0.23974198 2.6659586 -0.55479056 
		-0.25520012 2.4201355 -0.56667 0.23974198 2.6659586 -0.55479056 0.25520012 2.4201355 
		0.032244399 0.23974198 2.6659586 0.081871465 0.25520012;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null10" -p "left_arm_02";
	rename -uid "7BAAA9B7-4FEE-F664-3935-F1AD0B4668F4";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 3.2028301310612974 -0.23954364185499744 0 ;
	setAttr ".sp" -type "double3" 3.2028301310612974 -0.23954364185499744 0 ;
createNode transform -n "left_arm_03" -p "null10";
	rename -uid "724D9633-4C66-B189-70D8-AABA0A889596";
	setAttr ".rp" -type "double3" 3.2028301310612974 -0.23954364185499744 0 ;
	setAttr ".sp" -type "double3" 3.202830131061297 -0.23954364185499744 0 ;
createNode mesh -n "left_arm_Shape3" -p "left_arm_03";
	rename -uid "371F6E4C-48E5-061F-D176-478CE2B9483D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.20283031 -0.40725285 0.20778914 3.8910017 -0.40725285 0.20778914
		 3.20283031 -0.071834743 0.20778914 3.8910017 -0.071834743 0.20778914 3.20283031 -0.071834743 -0.20778914
		 3.8910017 -0.071834743 -0.20778914 3.20283031 -0.40725285 -0.20778914 3.8910017 -0.40725285 -0.20778914;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null11" -p "left_arm_03";
	rename -uid "6E3A0152-40D2-5FC1-C60D-7BB1155941C1";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 3.9170232855966147 -0.23954364185499744 0 ;
	setAttr ".sp" -type "double3" 3.9170232855966147 -0.23954364185499744 0 ;
createNode transform -n "left_arm_04" -p "null11";
	rename -uid "58CFD573-4F1F-318E-0736-2B81B6DA5759";
	setAttr ".rp" -type "double3" 3.9170232855966147 -0.23954364185499744 0 ;
	setAttr ".sp" -type "double3" 3.9170232855966152 -0.23954364185499744 0 ;
createNode mesh -n "left_arm_Shape4" -p "left_arm_04";
	rename -uid "EBD0E921-4AD8-A15F-A7C5-8EBBF9A0939D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.4170232 0.10281414 -0.30468372 
		3.8050432 0.10281414 -0.30468372 4.4170232 -0.58190161 -0.30468372 3.8050432 -0.58190161 
		-0.30468372 4.4170232 -0.58190161 0.30468372 3.8050432 -0.58190161 0.30468372 4.4170232 
		0.10281414 0.30468372 3.8050432 0.10281414 0.30468372;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null12" -p "left_arm_04";
	rename -uid "9B04107E-4455-D5C2-22F5-A18B2DEBF680";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 4.3344788333989408 -0.24473701309959606 0 ;
	setAttr ".sp" -type "double3" 4.3344788333989408 -0.24473701309959606 0 ;
createNode transform -n "left_arm_05" -p "null12";
	rename -uid "22EB9DF5-4C93-B940-38D5-29A34F6408B6";
	setAttr ".rp" -type "double3" 4.3344788333989408 -0.24473701309959606 0 ;
	setAttr ".sp" -type "double3" 4.3344788333989399 -0.24473701309959606 0 ;
createNode mesh -n "left_arm_05Shape" -p "left_arm_05";
	rename -uid "9369F6E2-40AF-8F47-9C50-BB9D5C69A2FC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.8344789 0.13253362 -0.34794 
		4.1365647 0.13253362 -0.34794 4.8344789 -0.62200767 -0.34794 4.1365647 -0.62200767 
		-0.34794 4.8344789 -0.62200767 0.34794 4.1365647 -0.62200767 0.34794 4.8344789 0.13253362 
		0.34794 4.1365647 0.13253362 0.34794;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null1" -p "shoulders";
	rename -uid "2FCEFCDD-4968-6E40-2CC2-58AF66C2F9B7";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0.035127401351928711 0 ;
	setAttr ".sp" -type "double3" 0 0.035127401351928711 0 ;
createNode transform -n "neck" -p "null1";
	rename -uid "1879C9D3-41B6-C99D-918F-7EB778D8030B";
	setAttr ".rp" -type "double3" 0 0.035127401351928711 0 ;
	setAttr ".sp" -type "double3" 0 0.035127401351928711 0 ;
createNode mesh -n "neckShape" -p "neck";
	rename -uid "0CDAE448-4B77-C59D-1EEF-F495874F5325";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.22466852 0.035127401 -0.072999224 0.19111446 0.035127401 -0.13885278
		 0.13885278 0.035127401 -0.19111444 0.072999217 0.035127401 -0.22466849 0 0.035127401 -0.23623042
		 -0.072999217 0.035127401 -0.22466847 -0.13885275 0.035127401 -0.1911144 -0.19111438 0.035127401 -0.13885273
		 -0.22466843 0.035127401 -0.072999194 -0.23623036 0.035127401 0 -0.22466843 0.035127401 0.072999194
		 -0.19111437 0.035127401 0.13885272 -0.13885272 0.035127401 0.19111435 -0.072999194 0.035127401 0.2246684
		 -7.0402115e-09 0.035127401 0.23623033 0.072999172 0.035127401 0.22466838 0.13885269 0.035127401 0.19111434
		 0.19111432 0.035127401 0.1388527 0.22466837 0.035127401 0.072999179 0.2362303 0.035127401 0
		 0.22466852 0.37573099 -0.072999224 0.19111446 0.37573099 -0.13885278 0.13885278 0.37573099 -0.19111444
		 0.072999217 0.37573099 -0.22466849 0 0.37573099 -0.23623042 -0.072999217 0.37573099 -0.22466847
		 -0.13885275 0.37573099 -0.1911144 -0.19111438 0.37573099 -0.13885273 -0.22466843 0.37573099 -0.072999194
		 -0.23623036 0.37573099 0 -0.22466843 0.37573099 0.072999194 -0.19111437 0.37573099 0.13885272
		 -0.13885272 0.37573099 0.19111435 -0.072999194 0.37573099 0.2246684 -7.0402115e-09 0.37573099 0.23623033
		 0.072999172 0.37573099 0.22466838 0.13885269 0.37573099 0.19111434 0.19111432 0.37573099 0.1388527
		 0.22466837 0.37573099 0.072999179 0.2362303 0.37573099 0 0 0.035127401 0 0 0.37573099 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null13" -p "neck";
	rename -uid "4588E562-424C-0D37-D2D2-CD95579B2291";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0.39783239364624023 0 ;
	setAttr ".sp" -type "double3" 0 0.39783239364624023 0 ;
createNode transform -n "head" -p "null13";
	rename -uid "746A37AC-468C-B477-4D61-C2BAD8571DA3";
	setAttr ".rp" -type "double3" 0 0.39783239364624023 0 ;
	setAttr ".sp" -type "double3" 0 0.39783239364624023 0 ;
createNode mesh -n "headShape" -p "head";
	rename -uid "D0520797-44AE-8A5C-01C1-58B603D47F9F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.071968593 0.39783239 -0.023384014 0.061220143 0.39783239 -0.044479035
		 0.044479035 0.39783239 -0.061220143 0.02338401 0.39783239 -0.071968585 0 0.39783239 -0.075672247
		 -0.02338401 0.39783239 -0.071968585 -0.044479027 0.39783239 -0.061220128 -0.061220121 0.39783239 -0.04447902
		 -0.07196857 0.39783239 -0.023384005 -0.075672232 0.39783239 0 -0.07196857 0.39783239 0.023384005
		 -0.061220121 0.39783239 0.044479016 -0.044479016 0.39783239 0.061220113 -0.023384005 0.39783239 0.071968563
		 -2.2552076e-09 0.39783239 0.075672217 0.023383997 0.39783239 0.071968555 0.044479009 0.39783239 0.061220106
		 0.061220106 0.39783239 0.044479012 0.071968555 0.39783239 0.023383999 0.075672209 0.39783239 0
		 0.14216508 0.41555226 -0.046192233 0.12093285 0.41555226 -0.087862842 0.087862842 0.41555226 -0.12093283
		 0.046192225 0.41555226 -0.14216506 0 0.41555226 -0.14948119 -0.046192225 0.41555226 -0.14216505
		 -0.087862827 0.41555226 -0.1209328 -0.1209328 0.41555226 -0.087862819 -0.14216502 0.41555226 -0.046192214
		 -0.14948115 0.41555226 0 -0.14216502 0.41555226 0.046192214 -0.12093279 0.41555226 0.087862812
		 -0.087862812 0.41555226 0.12093279 -0.046192214 0.41555226 0.14216501 -4.4548845e-09 0.41555226 0.14948113
		 0.046192203 0.41555226 0.14216499 0.08786279 0.41555226 0.12093277 0.12093276 0.41555226 0.087862797
		 0.14216499 0.41555226 0.046192206 0.14948112 0.41555226 0 0.20886099 0.44460034 -0.067863047
		 0.17766778 0.44460034 -0.12908319 0.12908319 0.44460034 -0.17766777 0.06786304 0.44460034 -0.20886096
		 0 0.44460034 -0.21960941 -0.06786304 0.44460034 -0.20886095 -0.12908316 0.44460034 -0.17766772
		 -0.17766771 0.44460034 -0.12908314 -0.20886092 0.44460034 -0.067863017 -0.21960936 0.44460034 0
		 -0.20886092 0.44460034 0.067863017 -0.17766769 0.44460034 0.12908313 -0.12908313 0.44460034 0.17766769
		 -0.067863017 0.44460034 0.20886089 -6.5448673e-09 0.44460034 0.21960934 0.067863002 0.44460034 0.20886087
		 0.1290831 0.44460034 0.17766768 0.17766766 0.44460034 0.12908311 0.20886086 0.44460034 0.06786301
		 0.21960931 0.44460034 0 0.27041405 0.48426127 -0.087862842 0.23002793 0.48426127 -0.16712506
		 0.16712506 0.48426127 -0.23002791 0.087862834 0.48426127 -0.27041402 0 0.48426127 -0.2843301
		 -0.087862834 0.48426127 -0.27041399 -0.16712503 0.48426127 -0.23002785 -0.23002784 0.48426127 -0.167125
		 -0.27041394 0.48426127 -0.087862805 -0.28433001 0.48426127 0 -0.27041394 0.48426127 0.087862805
		 -0.23002782 0.48426127 0.16712499 -0.16712499 0.48426127 0.23002781 -0.087862805 0.48426127 0.27041391
		 -8.4736929e-09 0.48426127 0.28432998 0.087862782 0.48426127 0.27041391 0.16712496 0.48426127 0.23002779
		 0.23002778 0.48426127 0.16712497 0.27041388 0.48426127 0.08786279 0.28432995 0.48426127 0
		 0.32530862 0.53355837 -0.10569917 0.27672404 0.53355837 -0.20105177 0.20105177 0.53355837 -0.27672401
		 0.10569916 0.53355837 -0.32530859 0 0.53355837 -0.34204966 -0.10569916 0.53355837 -0.32530856
		 -0.20105173 0.53355837 -0.27672395 -0.27672392 0.53355837 -0.20105171 -0.3253085 0.53355837 -0.10569912
		 -0.34204957 0.53355837 0 -0.3253085 0.53355837 0.10569912 -0.27672392 0.53355837 0.20105168
		 -0.20105168 0.53355837 0.27672389 -0.10569912 0.53355837 0.32530844 -1.0193869e-08 0.53355837 0.34204951
		 0.10569909 0.53355837 0.32530844 0.20105164 0.53355837 0.27672386 0.27672386 0.53355837 0.20105167
		 0.32530841 0.53355837 0.10569911 0.34204948 0.53355837 0 0.37219301 0.59127784 -0.12093283
		 0.31660628 0.59127784 -0.23002791 0.23002791 0.59127784 -0.31660625 0.12093282 0.59127784 -0.37219295
		 0 0.59127784 -0.39134681 -0.12093282 0.59127784 -0.37219292 -0.23002787 0.59127784 -0.31660619
		 -0.31660616 0.59127784 -0.23002784 -0.37219286 0.59127784 -0.12093279 -0.39134672 0.59127784 0
		 -0.37219286 0.59127784 0.12093279 -0.31660613 0.59127784 0.23002782 -0.23002782 0.59127784 0.3166061
		 -0.12093279 0.59127784 0.3721928 -1.1663039e-08 0.59127784 0.39134669 0.12093275 0.59127784 0.3721928
		 0.23002778 0.59127784 0.31660607 0.31660607 0.59127784 0.23002779 0.37219277 0.59127784 0.12093276
		 0.39134663 0.59127784 0 0.40991277 0.65599853 -0.13318872 0.34869263 0.65599853 -0.25334001
		 0.25334001 0.65599853 -0.3486926 0.13318871 0.65599853 -0.40991271 0 0.65599853 -0.43100771
		 -0.13318871 0.65599853 -0.40991271 -0.25333995 0.65599853 -0.34869254 -0.34869251 0.65599853 -0.25333992
		 -0.40991262 0.65599853 -0.13318866 -0.43100762 0.65599853 0 -0.40991262 0.65599853 0.13318866
		 -0.34869251 0.65599853 0.25333992 -0.25333992 0.65599853 0.34869248 -0.13318866 0.65599853 0.40991256
		 -1.2845025e-08 0.65599853 0.43100756 0.13318864 0.65599853 0.40991253 0.25333986 0.65599853 0.34869245
		 0.34869242 0.65599853 0.25333989 0.4099125 0.65599853 0.13318865 0.4310075 0.65599853 0
		 0.43753913 0.72612673 -0.14216506 0.37219301 0.72612673 -0.27041405 0.27041405 0.72612673 -0.37219298
		 0.14216505 0.72612673 -0.43753907 0 0.72612673 -0.4600558 -0.14216505 0.72612673 -0.43753904
		 -0.27041399 0.72612673 -0.37219292 -0.37219289 0.72612673 -0.27041396 -0.43753895 0.72612673 -0.14216502
		 -0.46005568 0.72612673 0 -0.43753895 0.72612673 0.14216502 -0.37219286 0.72612673 0.27041394
		 -0.27041394 0.72612673 0.37219283 -0.14216502 0.72612673 0.43753889 -1.3710724e-08 0.72612673 0.46005562
		 0.14216498 0.72612673 0.43753886 0.27041388 0.72612673 0.3721928 0.37219277 0.72612673 0.27041391
		 0.43753883 0.72612673 0.14216499 0.46005556 0.72612673 0 0.45439181 0.7999357 -0.14764084
		 0.38652876 0.7999357 -0.28082958 0.28082958 0.7999357 -0.38652873 0.14764082 0.7999357 -0.45439175
		 0 0.7999357 -0.47777575 -0.14764082 0.7999357 -0.45439172;
	setAttr ".vt[166:331]" -0.28082952 0.7999357 -0.38652864 -0.38652861 0.7999357 -0.28082949
		 -0.45439163 0.7999357 -0.14764078 -0.47777563 0.7999357 0 -0.45439163 0.7999357 0.14764078
		 -0.38652858 0.7999357 0.28082946 -0.28082946 0.7999357 0.38652855 -0.14764078 0.7999357 0.45439157
		 -1.423882e-08 0.7999357 0.47777557 0.14764073 0.7999357 0.45439157 0.2808294 0.7999357 0.38652852
		 0.38652849 0.7999357 0.28082943 0.45439154 0.7999357 0.14764075 0.47777551 0.7999357 0
		 0.46005586 0.87560785 -0.14948121 0.3913469 0.87560785 -0.28433013 0.28433013 0.87560785 -0.39134687
		 0.14948119 0.87560785 -0.4600558 0 0.87560785 -0.48373127 -0.14948119 0.87560785 -0.46005577
		 -0.28433007 0.87560785 -0.39134678 -0.39134675 0.87560785 -0.28433004 -0.46005568 0.87560785 -0.14948115
		 -0.48373115 0.87560785 0 -0.46005568 0.87560785 0.14948115 -0.39134672 0.87560785 0.28433001
		 -0.28433001 0.87560785 0.39134669 -0.14948115 0.87560785 0.46005562 -1.4416308e-08 0.87560785 0.48373109
		 0.1494811 0.87560785 0.46005559 0.28432995 0.87560785 0.39134666 0.39134663 0.87560785 0.28432998
		 0.46005556 0.87560785 0.14948112 0.48373103 0.87560785 0 0.45439181 0.95128 -0.14764084
		 0.38652876 0.95128 -0.28082958 0.28082958 0.95128 -0.38652873 0.14764082 0.95128 -0.45439175
		 0 0.95128 -0.47777575 -0.14764082 0.95128 -0.45439172 -0.28082952 0.95128 -0.38652864
		 -0.38652861 0.95128 -0.28082949 -0.45439163 0.95128 -0.14764078 -0.47777563 0.95128 0
		 -0.45439163 0.95128 0.14764078 -0.38652858 0.95128 0.28082946 -0.28082946 0.95128 0.38652855
		 -0.14764078 0.95128 0.45439157 -1.423882e-08 0.95128 0.47777557 0.14764073 0.95128 0.45439157
		 0.2808294 0.95128 0.38652852 0.38652849 0.95128 0.28082943 0.45439154 0.95128 0.14764075
		 0.47777551 0.95128 0 0.43753913 1.025089025 -0.14216506 0.37219301 1.025089025 -0.27041405
		 0.27041405 1.025089025 -0.37219298 0.14216505 1.025089025 -0.43753907 0 1.025089025 -0.4600558
		 -0.14216505 1.025089025 -0.43753904 -0.27041399 1.025089025 -0.37219292 -0.37219289 1.025089025 -0.27041396
		 -0.43753895 1.025089025 -0.14216502 -0.46005568 1.025089025 0 -0.43753895 1.025089025 0.14216502
		 -0.37219286 1.025089025 0.27041394 -0.27041394 1.025089025 0.37219283 -0.14216502 1.025089025 0.43753889
		 -1.3710724e-08 1.025089025 0.46005562 0.14216498 1.025089025 0.43753886 0.27041388 1.025089025 0.3721928
		 0.37219277 1.025089025 0.27041391 0.43753883 1.025089025 0.14216499 0.46005556 1.025089025 0
		 0.40991277 1.095217228 -0.13318872 0.34869263 1.095217228 -0.25334001 0.25334001 1.095217228 -0.3486926
		 0.13318871 1.095217228 -0.40991271 0 1.095217228 -0.43100771 -0.13318871 1.095217228 -0.40991271
		 -0.25333995 1.095217228 -0.34869254 -0.34869251 1.095217228 -0.25333992 -0.40991262 1.095217228 -0.13318866
		 -0.43100762 1.095217228 0 -0.40991262 1.095217228 0.13318866 -0.34869251 1.095217228 0.25333992
		 -0.25333992 1.095217228 0.34869248 -0.13318866 1.095217228 0.40991256 -1.2845025e-08 1.095217228 0.43100756
		 0.13318864 1.095217228 0.40991253 0.25333986 1.095217228 0.34869245 0.34869242 1.095217228 0.25333989
		 0.4099125 1.095217228 0.13318865 0.4310075 1.095217228 0 0.37219301 1.15993786 -0.12093283
		 0.31660628 1.15993786 -0.23002791 0.23002791 1.15993786 -0.31660625 0.12093282 1.15993786 -0.37219295
		 0 1.15993786 -0.39134681 -0.12093282 1.15993786 -0.37219292 -0.23002787 1.15993786 -0.31660619
		 -0.31660616 1.15993786 -0.23002784 -0.37219286 1.15993786 -0.12093279 -0.39134672 1.15993786 0
		 -0.37219286 1.15993786 0.12093279 -0.31660613 1.15993786 0.23002782 -0.23002782 1.15993786 0.3166061
		 -0.12093279 1.15993786 0.3721928 -1.1663039e-08 1.15993786 0.39134669 0.12093275 1.15993786 0.3721928
		 0.23002778 1.15993786 0.31660607 0.31660607 1.15993786 0.23002779 0.37219277 1.15993786 0.12093276
		 0.39134663 1.15993786 0 0.32530862 1.21765733 -0.10569917 0.27672404 1.21765733 -0.20105177
		 0.20105177 1.21765733 -0.27672401 0.10569916 1.21765733 -0.32530859 0 1.21765733 -0.34204966
		 -0.10569916 1.21765733 -0.32530856 -0.20105173 1.21765733 -0.27672395 -0.27672392 1.21765733 -0.20105171
		 -0.3253085 1.21765733 -0.10569912 -0.34204957 1.21765733 0 -0.3253085 1.21765733 0.10569912
		 -0.27672392 1.21765733 0.20105168 -0.20105168 1.21765733 0.27672389 -0.10569912 1.21765733 0.32530844
		 -1.0193869e-08 1.21765733 0.34204951 0.10569909 1.21765733 0.32530844 0.20105164 1.21765733 0.27672386
		 0.27672386 1.21765733 0.20105167 0.32530841 1.21765733 0.10569911 0.34204948 1.21765733 0
		 0.27041405 1.26695442 -0.087862842 0.23002793 1.26695442 -0.16712506 0.16712506 1.26695442 -0.23002791
		 0.087862834 1.26695442 -0.27041402 0 1.26695442 -0.2843301 -0.087862834 1.26695442 -0.27041399
		 -0.16712503 1.26695442 -0.23002785 -0.23002784 1.26695442 -0.167125 -0.27041394 1.26695442 -0.087862805
		 -0.28433001 1.26695442 0 -0.27041394 1.26695442 0.087862805 -0.23002782 1.26695442 0.16712499
		 -0.16712499 1.26695442 0.23002781 -0.087862805 1.26695442 0.27041391 -8.4736929e-09 1.26695442 0.28432998
		 0.087862782 1.26695442 0.27041391 0.16712496 1.26695442 0.23002779 0.23002778 1.26695442 0.16712497
		 0.27041388 1.26695442 0.08786279 0.28432995 1.26695442 0 0.20886099 1.30661535 -0.067863047
		 0.17766778 1.30661535 -0.12908319 0.12908319 1.30661535 -0.17766777 0.06786304 1.30661535 -0.20886096
		 0 1.30661535 -0.21960941 -0.06786304 1.30661535 -0.20886095 -0.12908316 1.30661535 -0.17766772
		 -0.17766771 1.30661535 -0.12908314 -0.20886092 1.30661535 -0.067863017 -0.21960936 1.30661535 0
		 -0.20886092 1.30661535 0.067863017 -0.17766769 1.30661535 0.12908313;
	setAttr ".vt[332:381]" -0.12908313 1.30661535 0.17766769 -0.067863017 1.30661535 0.20886089
		 -6.5448673e-09 1.30661535 0.21960934 0.067863002 1.30661535 0.20886087 0.1290831 1.30661535 0.17766768
		 0.17766766 1.30661535 0.12908311 0.20886086 1.30661535 0.06786301 0.21960931 1.30661535 0
		 0.14216508 1.33566344 -0.046192233 0.12093285 1.33566344 -0.087862842 0.087862842 1.33566344 -0.12093283
		 0.046192225 1.33566344 -0.14216506 0 1.33566344 -0.14948119 -0.046192225 1.33566344 -0.14216505
		 -0.087862827 1.33566344 -0.1209328 -0.1209328 1.33566344 -0.087862819 -0.14216502 1.33566344 -0.046192214
		 -0.14948115 1.33566344 0 -0.14216502 1.33566344 0.046192214 -0.12093279 1.33566344 0.087862812
		 -0.087862812 1.33566344 0.12093279 -0.046192214 1.33566344 0.14216501 -4.4548845e-09 1.33566344 0.14948113
		 0.046192203 1.33566344 0.14216499 0.08786279 1.33566344 0.12093277 0.12093276 1.33566344 0.087862797
		 0.14216499 1.33566344 0.046192206 0.14948112 1.33566344 0 0.071968593 1.3533833 -0.023384014
		 0.061220143 1.3533833 -0.044479035 0.044479035 1.3533833 -0.061220143 0.02338401 1.3533833 -0.071968585
		 0 1.3533833 -0.075672247 -0.02338401 1.3533833 -0.071968585 -0.044479027 1.3533833 -0.061220128
		 -0.061220121 1.3533833 -0.04447902 -0.07196857 1.3533833 -0.023384005 -0.075672232 1.3533833 0
		 -0.07196857 1.3533833 0.023384005 -0.061220121 1.3533833 0.044479016 -0.044479016 1.3533833 0.061220113
		 -0.023384005 1.3533833 0.071968563 -2.2552076e-09 1.3533833 0.075672217 0.023383997 1.3533833 0.071968555
		 0.044479009 1.3533833 0.061220106 0.061220106 1.3533833 0.044479012 0.071968555 1.3533833 0.023383999
		 0.075672209 1.3533833 0 0 0.39187682 0 0 1.35933888 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "hips" -p "full_body_01";
	rename -uid "33360018-4266-E2A7-3D2D-04BE5C94B000";
	setAttr ".rp" -type "double3" 0 -3.2804076671600342 0 ;
	setAttr ".sp" -type "double3" 0 -3.2804076671600342 0 ;
createNode mesh -n "hipsShape" -p "hips";
	rename -uid "375E1C5F-4983-1739-A489-79BBE24E9359";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.026862763 -3.3991854 -0.17319301 
		-0.026862763 -3.3991854 -0.17319301 -0.091635413 -3.7804077 -0.17319301 0.091635413 
		-3.7804077 -0.17319301 -0.091635413 -3.7804077 0.17319301 0.091635413 -3.7804077 
		0.17319301 0.026862763 -3.3991854 0.17319301 -0.026862763 -3.3991854 0.17319301;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null15" -p "hips";
	rename -uid "17143639-4B69-4839-238A-FE9F05E6E89F";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0.26660354545270099 -3.9625263214111328 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "left_thigh" -p "null15";
	rename -uid "FC340805-4568-BEBF-79EF-3A89CE0C1222";
createNode mesh -n "left_thighShape" -p "left_thigh";
	rename -uid "FB9E6AA6-47A2-9714-3557-5DA28EA3848F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.31677809 -1.1620569 -0.2002112 
		-0.25588891 -1.1620569 -0.2002112 0.28633347 -0.5 -0.2002112 -0.28633353 -0.5 -0.2002112 
		0.28633347 -0.5 0.2002112 -0.28633353 -0.5 0.2002112 0.31677809 -1.1620569 0.2002112 
		-0.25588891 -1.1620569 0.2002112;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null16" -p "left_thigh";
	rename -uid "6501E9A6-477D-AACF-2F61-53A4505E6475";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -1.7364578247070312 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "left_shin" -p "null16";
	rename -uid "2616D958-488E-F020-53AC-92A97D82DBD0";
createNode mesh -n "left_shinShape" -p "left_shin";
	rename -uid "C181072E-403B-6D92-4F51-D4A093EAE389";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.31677809 -1.1620569 -0.2002112 
		-0.25588891 -1.1620569 -0.2002112 0.32608935 -0.5 -0.2002112 -0.24657768 -0.5 -0.2002112 
		0.32608935 -0.5 0.2002112 -0.24657768 -0.5 0.2002112 0.31677809 -1.1620569 0.2002112 
		-0.25588891 -1.1620569 0.2002112;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null17" -p "left_shin";
	rename -uid "14CE0BF5-435B-A4A8-CFE8-FAB66F5AC35A";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -1.7604451179504395 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "left_heel" -p "null17";
	rename -uid "EA3A146A-4052-D679-0F02-A795B8BC7C91";
createNode mesh -n "left_heelShape" -p "left_heel";
	rename -uid "394C93C0-4439-9762-0D57-7E96AAFBD37C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.31677809 0.1724081 -0.2002112 
		-0.25588891 0.1724081 -0.2002112 0.32608935 -0.5 -0.2002112 -0.24657768 -0.5 -0.2002112 
		0.32608935 -0.5 0.2002112 -0.24657768 -0.5 0.2002112 0.31677809 0.1724081 0.2002112 
		-0.25588891 0.1724081 0.2002112;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null18" -p "left_heel";
	rename -uid "93B183BE-416E-633E-1853-03893DC6564C";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -0.16379586449947947 0.36013555526733398 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "left_foot" -p "null18";
	rename -uid "965A68C9-4ABE-338C-D6C4-34B5AC16A85B";
createNode mesh -n "left_footShape" -p "left_foot";
	rename -uid "72063429-4425-09D8-1731-7D800C0ACCFD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.31677809 0.32796562 0.099577576 
		-0.25588891 0.32796562 0.099577576 0.32608935 -0.49656498 0.099577576 -0.24657768 
		-0.49656498 0.099577576 0.32608935 -0.33620417 0.5 -0.24657768 -0.33620417 0.5 0.31677809 
		0.33620393 0.5 -0.25588891 0.33620393 0.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null19" -p "hips";
	rename -uid "A9E4C881-4F94-3CC2-484A-32949066E7C4";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -0.23071815096232146 -3.9625263214111328 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "right_thigh" -p "null19";
	rename -uid "A5A53AF8-4CE4-0FF2-4C53-0B93123D58EF";
createNode mesh -n "right_thighShape" -p "right_thigh";
	rename -uid "EE770231-4033-32B8-118C-A89A28EB60AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.2548216 -1.66205692 0.2997888 0.17251143 -1.66205692 0.2997888
		 -0.21366648 0 0.2997888 0.2136665 0 0.2997888 -0.21366648 0 -0.2997888 0.2136665 0 -0.2997888
		 -0.2548216 -1.66205692 -0.2997888 0.17251143 -1.66205692 -0.2997888;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null20" -p "right_thigh";
	rename -uid "D2DD4001-4D92-3426-A88E-CDBA68B68241";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -1.7364578247070312 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "right_shin" -p "null20";
	rename -uid "7337F8A5-487F-F25A-DEDA-D09C59339B9A";
	setAttr ".rp" -type "double3" -0.23071815096232146 -5.6989841461181641 0 ;
	setAttr ".sp" -type "double3" -0.23071815096232146 -5.6989841461181641 0 ;
createNode mesh -n "right_shinShape" -p "right_shin";
	rename -uid "60A23EE3-41A3-B6BF-3138-BC8D444007CD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.003994599 -6.8610411 -0.2002112 
		-0.56867242 -6.8610411 -0.2002112 0.012459993 -6.1989841 -0.2002112 -0.56020701 -6.1989841 
		-0.2002112 0.012459993 -6.1989841 0.2002112 -0.56020701 -6.1989841 0.2002112 0.003994599 
		-6.8610411 0.2002112 -0.56867242 -6.8610411 0.2002112;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null21" -p "right_shin";
	rename -uid "17778EF3-4539-A14F-EBDE-798FF291D681";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -0.23071815096232146 -7.4594292640686035 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "right_heel" -p "null21";
	rename -uid "0031D685-43BE-D448-5633-848BA55920D9";
createNode mesh -n "right_heelShape" -p "right_heel";
	rename -uid "53697B0F-46A0-D5EF-3BF1-34B0202DD5D4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.23471275 0.1724081 -0.2002112 
		-0.33795428 0.1724081 -0.2002112 0.24317814 -0.5 -0.2002112 -0.32948887 -0.5 -0.2002112 
		0.24317814 -0.5 0.2002112 -0.32948887 -0.5 0.2002112 0.23471275 0.1724081 0.2002112 
		-0.33795428 0.1724081 0.2002112;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "null22" -p "right_heel";
	rename -uid "6C9D17B0-453A-CA3B-63C1-D893ACED82E6";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -0.16379586449947947 0.36013555526733398 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "right_foot" -p "null22";
	rename -uid "970A5BD2-4784-9C03-2B62-EBB9BF203190";
createNode mesh -n "right_footShape" -p "right_foot";
	rename -uid "8E78A584-4C8F-4B53-22C2-C495C8D09C87";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.23471275 0.32642403 0.099577576 
		-0.33795428 0.32642403 0.099577576 0.24317814 -0.4985095 0.099577576 -0.32948887 
		-0.4985095 0.099577576 0.24317814 -0.33620414 0.5 -0.32948887 -0.33620414 0.5 0.23471275 
		0.33620396 0.5 -0.33795428 0.33620396 0.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "aiSkyDomeLight1";
	rename -uid "18CBB9E0-4220-B9E8-B646-96972E4DA66D";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "45F2533F-4BA6-F07F-F013-C392554EF329";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 0.60975611209869385;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9579FCA1-4C60-ED7C-1D43-E5ADBBE97E3E";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "98D65366-4A24-9D36-8CF1-0D83D71E6110";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A5048886-43C8-4CF5-0529-56A3CC701C80";
createNode displayLayerManager -n "layerManager";
	rename -uid "D3167479-4C37-BBBE-4639-39B8EDA9C01D";
createNode displayLayer -n "defaultLayer";
	rename -uid "7319281D-46C3-C532-CE9D-4595614FF10D";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5B341519-4F2D-946B-6FBA-CAB1C5598862";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CAE8C03D-4CE6-0253-ABB2-37876FF8CD98";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "8B7A2B1D-421C-ECBF-7282-ECA66A1872CF";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".rndrdvc" 1;
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "6CD5D729-486C-EE39-EAA1-05A40BB385B9";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "218AF730-447C-5A08-8868-B789EB519073";
	setAttr ".color_management" 1;
	setAttr ".ai_translator" -type "string" "png";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "08389428-49CA-C9D5-5BA6-DDB92D0F5F0D";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "41741203-4D74-5938-F8B1-E2BA758E5662";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2683\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2683\\n    -height 516\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2683\\n    -height 516\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CF7F8D37-4A75-CA3E-EA4F-EAB53102A790";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 48 -ast 0 -aet 630 ";
	setAttr ".st" 6;
createNode animCurveTL -n "right_thigh_translateX";
	rename -uid "2C0D01DF-44A5-B630-991E-E89561DDBBC2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "shoulders_translateX";
	rename -uid "41E2833C-4A76-9ED5-986C-A18D5A5458AD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_heel_translateX";
	rename -uid "308C757D-4BAC-B14E-FC5C-D681CD108EC4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_05_translateX";
	rename -uid "74FAF35F-4F72-836C-E121-5DBE2E0354B3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_05_translateX";
	rename -uid "D255D95D-4271-046E-5B55-5F9DCAED8E31";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "hips_translateX";
	rename -uid "07CD3ADF-4F8A-1E2C-2D6F-18ADD68A2527";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_04_translateX";
	rename -uid "EAE008A5-4291-F9D2-AE04-A0864198C2C0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_03_translateX";
	rename -uid "58A5099C-43C5-A26D-0EFC-2A82C0818E62";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_02_translateX";
	rename -uid "44C9CACD-4E97-A8B4-C72A-DBBE5A48C8AD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_02_translateX";
	rename -uid "29385BB3-4149-1438-637A-819837017346";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_04_translateX";
	rename -uid "5D5FE834-4760-3488-3F10-C3A2896EB02F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_03_translateX";
	rename -uid "BA56EDC0-48AC-B0FC-F4FA-0CAC1CA4DB47";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_thigh_translateX";
	rename -uid "4D3465A8-4822-4C84-915F-75B2C21B1D74";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_heel_translateX";
	rename -uid "3AF8D46C-41AA-BBE6-6B52-5C999F693061";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_foot_translateX";
	rename -uid "267C20BD-49B7-F6DD-A3BC-3EA59AC6DC03";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_shin_translateX";
	rename -uid "CD5AFE29-4B3A-FBA5-AB7C-27AC55EA5E40";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_shin_translateX";
	rename -uid "DB2F5DAC-4901-5288-0D48-BE90BEBD2F2C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.23071815096232146 6 0.23071815096232146
		 12 0.23071815096232146 18 0.23071815096232146 24 0.23071815096232146 30 0.23071815096232146
		 36 0.23071815096232146 42 0.23071815096232146 48 0.23071815096232146;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_01_translateX";
	rename -uid "CBFA3653-46E3-F109-7686-BDA1C787137A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_foot_translateX";
	rename -uid "283ED952-4CDF-B219-0C61-8289AF775F1A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_01_translateX";
	rename -uid "69646992-421F-07ED-ACA3-8DA845AC7426";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "head_translateX";
	rename -uid "DD522A52-4D83-BB03-06F6-89A53755A3B1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "neck_translateX";
	rename -uid "948AC203-4422-4A52-5A52-198E20D7758C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "torso_translateX";
	rename -uid "CFD48A35-4E8A-9FC4-CF45-46B251A3D017";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_thigh_translateY";
	rename -uid "8C27ED8F-43BA-5500-C687-5482514C1D79";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "shoulders_translateY";
	rename -uid "5346E699-4ECD-02BE-0E7D-F3B02AD53B84";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_heel_translateY";
	rename -uid "72EC9CA3-490A-CC29-F15B-13926120A1D0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_05_translateY";
	rename -uid "6F6F90A0-422D-D6BF-B561-02B8D6E36522";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_05_translateY";
	rename -uid "94A88632-43F8-9A5B-BE3F-2883047E2D28";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "hips_translateY";
	rename -uid "E6F7FB97-4325-266D-95F2-2581C5BD12E5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_04_translateY";
	rename -uid "56FA5CB5-4AB3-0C19-85C1-9DBE62EFBC1F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_03_translateY";
	rename -uid "69B0DF31-4227-7BAE-F532-708557027DEB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_02_translateY";
	rename -uid "02447F8D-4E25-8C5C-5F51-06AE352C2FBF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_02_translateY";
	rename -uid "7FECB1D2-4C5B-7D09-CC1D-6BB2E531F11F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_04_translateY";
	rename -uid "AF820118-4F13-DF35-7D36-92BC4B8FC8CD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_03_translateY";
	rename -uid "7DD7799E-476F-B0A5-C28A-66BA0DF8B788";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_thigh_translateY";
	rename -uid "55A26186-4B12-8618-B5AF-21B3A49FBA2D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_heel_translateY";
	rename -uid "49262C3C-4EFE-536E-A82E-C1A62985129D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_foot_translateY";
	rename -uid "4D09AB6F-4BE6-5F43-4029-2AA1B496C7F8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_shin_translateY";
	rename -uid "21B39DF6-430A-F7A3-EE80-95BA48305AB5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_shin_translateY";
	rename -uid "C42ED2B1-459B-111A-1359-9CB5DE3FB7E3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.6989841461181641 6 5.6989841461181641
		 12 5.6989841461181641 18 5.6989841461181641 24 5.6989841461181641 30 5.6989841461181641
		 36 5.6989841461181641 42 5.6989841461181641 48 5.6989841461181641;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_01_translateY";
	rename -uid "61B0827D-4493-39E4-B6A5-E6AD843F18B1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_foot_translateY";
	rename -uid "47D7462D-41BB-E0B2-F861-5CA7C647DEBB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_01_translateY";
	rename -uid "CA4AA321-46C8-9FEC-3CF8-43990B08E491";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "head_translateY";
	rename -uid "7E1FFEFB-4195-7E86-75CD-9B8B05CFA400";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "neck_translateY";
	rename -uid "16AF5F8F-4C69-32B8-1DC0-DAA0B15A75FB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "torso_translateY";
	rename -uid "4998AD6B-4B8D-73D6-5D58-5CAE0D9D09AF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_thigh_translateZ";
	rename -uid "C6DD36B8-4AEB-9DDE-8B7B-83A91CBBEF2E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "shoulders_translateZ";
	rename -uid "CDCBF00C-46D2-2C26-B9B7-E1B404C7E633";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_heel_translateZ";
	rename -uid "D366DA44-4A30-7C01-6966-88843B1A0286";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_05_translateZ";
	rename -uid "97DF30D3-42BC-AEB2-3B24-908C0693190D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_05_translateZ";
	rename -uid "0F840030-4011-2D1B-6009-3792D41BDE31";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "hips_translateZ";
	rename -uid "DD4AB1A9-414B-3A42-B21E-B5B62475AE5A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_04_translateZ";
	rename -uid "1F42C51A-43D7-DB6F-DC2D-2694754E05F4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_03_translateZ";
	rename -uid "05F3041A-4D18-A135-032B-4AA7CD390294";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_02_translateZ";
	rename -uid "AA5E2C87-4BB1-75C2-D6D9-B59E198EAA63";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_02_translateZ";
	rename -uid "53BF4D9D-4391-4666-C8A3-3284CB1485A5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_04_translateZ";
	rename -uid "5BD00586-4482-DB90-544A-FD8A7FFF2472";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_03_translateZ";
	rename -uid "4BAF4C96-41B6-7BD7-49BF-73B2591FB075";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_thigh_translateZ";
	rename -uid "A6EF7BB8-478B-2B7B-2C89-DAB2E8CC59B3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_heel_translateZ";
	rename -uid "0C2925A0-41C7-C302-F3BB-EC88A3636ED9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_foot_translateZ";
	rename -uid "1EBC2336-4EA5-1EDB-C9BC-8EBFAD1C8B44";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_shin_translateZ";
	rename -uid "72854DC8-4D33-BBD3-4B25-B19E2A58AD7C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_shin_translateZ";
	rename -uid "0840C55F-4B2A-AA9D-50C2-4494C6F60A25";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_arm_01_translateZ";
	rename -uid "C1FC52F7-462D-A4EF-71AB-DEB1E8D0303C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "right_foot_translateZ";
	rename -uid "827C39EE-4253-C01A-35D3-4C85C56AB72B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "left_arm_01_translateZ";
	rename -uid "820520BD-4D16-746E-C317-88B81185B7BE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "head_translateZ";
	rename -uid "F28C3D07-4906-FF84-111E-FABEDA326E88";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "neck_translateZ";
	rename -uid "3BA14AE3-45C6-DEDE-01EF-D3910928D432";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "torso_translateZ";
	rename -uid "A7B247AD-4005-9B1B-8D2C-6A960312BFD1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_thigh_rotateX";
	rename -uid "1FA8C34A-4F07-BA42-D8A2-EFBFAA7A7467";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -27.999999999999996 6 -42.000000000000014
		 12 0 18 27.000000000000014 24 22 30 22.000000000000004 36 -22.000000000000004 42 -41.000000000000014
		 48 -27.999999999999996;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "shoulders_rotateX";
	rename -uid "E07561C6-4F2B-232D-098A-0BB7BADD80A9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_heel_rotateX";
	rename -uid "EC7ED7B5-4513-E971-6F09-A28B3CF0FA9D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 -5.0000000000000009 12 0 18 0.41666666666666674
		 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_05_rotateX";
	rename -uid "9962F022-406B-91D9-17B6-C281EC7980B4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_05_rotateX";
	rename -uid "D733E272-4178-4A76-B99D-29A39E58215B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "hips_rotateX";
	rename -uid "AF438960-4F49-9F15-87ED-8DAF55AE0CA3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_04_rotateX";
	rename -uid "58018D82-4CB3-E89F-743B-9183F8609058";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_03_rotateX";
	rename -uid "E3E9B456-4D6B-8790-E2EC-72BFDA41E91C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_02_rotateX";
	rename -uid "3547F5FD-4C6B-E28B-479B-6D9119338FD5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_02_rotateX";
	rename -uid "92A3155C-4E8B-CC0A-A190-52ABF0FAF365";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_04_rotateX";
	rename -uid "D1D14F85-45E9-4BBE-B6B0-E3B6ACE0F7E2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_03_rotateX";
	rename -uid "ACA8F5F6-4C35-07B7-1F9F-48AEF74F3EEE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_thigh_rotateX";
	rename -uid "CDD17954-4491-C995-28E8-8486810EFC12";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 21.999999999999993 6 19 12 -25.000000000000004
		 18 -42.000000000000007 24 -28 30 -39.000000000000007 36 0 42 25.000000000000004 48 21.999999999999993;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_heel_rotateX";
	rename -uid "0EEED6AB-43D8-2338-2FC7-CF8856425703";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 9 24 0 30 0 36 0 42 5 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_foot_rotateX";
	rename -uid "0CC46682-46BB-4EE7-5E1E-D7963AD5AF23";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -28 6 -7.9999999999999956 12 -14 18 10
		 24 -14.999999999999998 30 0.87500000000000044 36 0 42 -24.000000000000004 48 -28;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_shin_rotateX";
	rename -uid "970D7FEA-407F-78E6-DD31-45925C1EA364";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16 6 47.000000000000014 12 99.000000000000028
		 18 57.958333333333357 24 0 30 36.000000000000007 36 0 42 4.3333333333333321 48 16;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_shin_rotateX";
	rename -uid "64F85A6F-488F-4AEE-FB45-E992E766A9BF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 46 12 0 18 3.5 24 16 30 36.999999999999986
		 36 99.000000000000028 42 68.000000000000014 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_01_rotateX";
	rename -uid "099C6295-48C0-71C9-6887-E5A900521A3C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_foot_rotateX";
	rename -uid "E4F7B596-4A81-A832-1E65-FC90D32CB7BA";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -17 6 -2.0000000000000004 12 0 18 -19
		 24 -28 30 -6.9999999999999991 36 8 42 5.5833333333333321 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_01_rotateX";
	rename -uid "AEFD16FB-4477-0398-4C38-D9B821BCE255";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "head_rotateX";
	rename -uid "73534FEC-409C-C1D6-BCEC-AD840C5239AB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "neck_rotateX";
	rename -uid "A76EA434-4A88-EBBC-73F0-1F8284DC1F35";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "torso_rotateX";
	rename -uid "FBE18668-4478-93D9-BFA2-E7AD29B02E25";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 3.0000000000000004 12 6.0000000000000009
		 18 3.5 24 0 30 3.1249999999999996 36 8 42 4.739583333333333 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_thigh_rotateY";
	rename -uid "33D91B51-4285-CC2E-2FE2-45BE1C9C99AD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "shoulders_rotateY";
	rename -uid "BF043721-432A-1F83-4C77-2B928BF32B7A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_heel_rotateY";
	rename -uid "1E3AC7F7-4C0A-BC1C-4EE1-168A7D10F216";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_05_rotateY";
	rename -uid "168E904A-4557-BDF0-7AB7-0C8DEB857827";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.000000000000002 6 6.9999999999999991
		 12 -17.000000000000004 18 -15.000000000000002 24 13.999999999999989 30 29.244791666666664
		 36 24.416666666666664 42 18.323350694444443 48 12.000000000000002;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_05_rotateY";
	rename -uid "C4DA4128-4C25-AFE9-7684-2CA2DF8268B3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -28 6 -24.000000000000004 12 -20.000000000000004
		 18 -16.000000000000004 24 -12.000000000000002 30 -9.0000000000000018 36 10 42 -13
		 48 -28;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "hips_rotateY";
	rename -uid "336AE670-4BA7-6C5C-0B70-9C86F78E49A6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_04_rotateY";
	rename -uid "FA10FEA6-47BB-81FC-82A5-0093EED61B1B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17 6 10.000000000000002 12 -26.000000000000004
		 18 -12 24 23 30 26.645833333333336 36 24.333333333333332 42 20.779513888888889 48 17;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_03_rotateY";
	rename -uid "86628077-4D54-93CA-B277-C8B94DDBEC3F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_02_rotateY";
	rename -uid "38656F45-461E-B433-BE80-64A0CB0ACF61";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.999999999999998 6 14.500000000000002
		 12 14 18 18 24 13 30 13.302083333333334 36 13.833333333333332 42 27.000000000000014
		 48 14.999999999999998;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_02_rotateY";
	rename -uid "F210F1E5-4E94-ED7A-2B53-72A9FC86E1C5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -13 6 -13.5 12 -14 18 -44.000000000000014
		 24 -14.999999999999998 30 -19 36 -14.166666666666668 42 -13.229166666666666 48 -13;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_04_rotateY";
	rename -uid "268B03E4-46EC-1E4C-1869-69A74465D530";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -23 6 -21.5 12 -20.000000000000004 18 -18.5
		 24 -17 30 -6.0000000000000009 36 16.000000000000004 42 -9 48 -23;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_03_rotateY";
	rename -uid "DD9A02AF-4C6F-3920-4E6A-CCAE39244611";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_thigh_rotateY";
	rename -uid "65724F28-486C-0589-177C-279E20A4C4A6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_heel_rotateY";
	rename -uid "BC6B4824-469D-D192-ED26-5387660AD014";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_foot_rotateY";
	rename -uid "9F69BFA7-4B8C-3E84-1577-72B4CDB95D31";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_shin_rotateY";
	rename -uid "898D1FA4-4E24-0E21-B24A-8182DE32F2A7";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_shin_rotateY";
	rename -uid "B053A6CF-4CCC-7C8D-C0AB-029BDC4C3C48";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_01_rotateY";
	rename -uid "45757980-48E5-6679-5A6D-1F9EF8380C17";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -33.000000000000007 6 -37.000000000000028
		 12 0.49999999999999434 18 18.979166666666664 24 34 30 27.000000000000004 36 6.083333333333341
		 42 -26.000000000000011 48 -33.000000000000007;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_foot_rotateY";
	rename -uid "C9842706-4E79-0458-5129-B3B941C0B507";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_01_rotateY";
	rename -uid "25D06287-4E9D-EE50-8AE5-86A2E08AA075";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -34 6 -36.000000000000014 12 -0.50000000000000067
		 18 39.000000000000007 24 33 30 39 36 5.0833333333333393 42 -25.000000000000011 48 -34;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "head_rotateY";
	rename -uid "ABAABA4D-4777-740A-2291-B7930A34270F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "neck_rotateY";
	rename -uid "4FF1603A-467D-EC33-2FCC-1FBBAC6C28A2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "torso_rotateY";
	rename -uid "C4C798E7-4908-7D6F-F4C6-0D900BB28682";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_thigh_rotateZ";
	rename -uid "B61FAEFD-4087-4539-606B-188E07B4CE35";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "shoulders_rotateZ";
	rename -uid "C9B107E5-4A23-4BB8-52E3-7C94C057D82A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_heel_rotateZ";
	rename -uid "796805E7-41A4-0E5F-55FC-A5AC80C271D8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_05_rotateZ";
	rename -uid "802FABB3-418D-1B5C-FB8F-6CA9DFFE291A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_05_rotateZ";
	rename -uid "648FC127-42F8-7566-824B-A4B54C384846";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "hips_rotateZ";
	rename -uid "95660354-426C-59BD-134A-70938E87A4AE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_04_rotateZ";
	rename -uid "4B7E3379-43D4-BC32-7F83-FDB507A8A303";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_03_rotateZ";
	rename -uid "1DFBBB67-4318-79F9-8020-BD8FBC918B53";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_02_rotateZ";
	rename -uid "F51B170A-40BF-B919-B1B0-DFAA9455FB38";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_02_rotateZ";
	rename -uid "AE7AF7B3-4BFC-D2B8-F033-F080D62BDE21";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_04_rotateZ";
	rename -uid "C8BDD9C8-46BD-001D-8F9F-3182ADB5DDE5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_03_rotateZ";
	rename -uid "B009A9EB-4C12-29C0-13C1-F6826888D280";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_thigh_rotateZ";
	rename -uid "F388454A-42B0-5388-D831-0D9B4BD1122C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_heel_rotateZ";
	rename -uid "E18EC171-40D8-B126-A95C-1CA9E481AEF3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_foot_rotateZ";
	rename -uid "051ABFE0-43AF-A16A-2ED8-B686544FDED4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_shin_rotateZ";
	rename -uid "5B9E908D-45A3-914F-D4F2-DF9A89B904A0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_shin_rotateZ";
	rename -uid "CF8D039B-4C0A-7A78-D4B8-04AF9E53E106";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_arm_01_rotateZ";
	rename -uid "D4769224-497E-9C89-AD8E-729126CCFD71";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 90 6 90 12 90 18 90 24 90 30 90 36 90
		 42 90 48 90;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "right_foot_rotateZ";
	rename -uid "BAF92D92-4CF5-AE23-F354-559E5EB62A3E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "left_arm_01_rotateZ";
	rename -uid "59F01C8F-4526-5B26-6715-51912247454C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -90 6 -90 12 -90 18 -90 24 -90 30 -90
		 36 -90 42 -90 48 -90;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "head_rotateZ";
	rename -uid "533FD065-46D2-2E2C-7A57-9E81E44A9978";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "neck_rotateZ";
	rename -uid "4BEC8B4C-45BB-64BF-0CFE-F69AC6C3322E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "torso_rotateZ";
	rename -uid "452642FF-4298-5D92-810A-2F808179D4B1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0;
	setAttr -s 9 ".kot[0:8]"  9 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "full_body_01_translateX";
	rename -uid "A38DD61A-4BEF-72DB-7DE0-5287EC952BF1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kot[0:4]"  9 9 9 9 9;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTL -n "full_body_01_translateY";
	rename -uid "885FE137-4B4E-D351-969A-5189BCA50CA0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0.14905967003662646 24 0 36 0.149
		 48 0;
	setAttr -s 5 ".kit[1:4]"  1 2 2 2;
	setAttr -s 5 ".kot[0:4]"  9 1 9 1 9;
	setAttr -s 5 ".ktl[1:4]" no yes no yes;
	setAttr -s 5 ".kix[1:4]"  0.92631630048862612 0.958320897245723 0.95835220440576607 
		0.95835220440576607;
	setAttr -s 5 ".kiy[1:4]"  0.37674674709818701 -0.28569399346530255 
		0.28558895691291825 -0.28558895691291825;
	setAttr -s 5 ".kox[1:4]"  0.92889535917949917 0.99999999821974339 
		0.94408173882953761 0.95835220440576607;
	setAttr -s 5 ".koy[1:4]"  -0.37034228990865925 -5.9670036520235556e-05 
		-0.32971149571799407 -0.28558895691291825;
createNode animCurveTL -n "full_body_01_translateZ";
	rename -uid "095696BB-4C0D-7C69-F65C-B489A52E1932";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kot[0:4]"  9 9 9 9 9;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTA -n "full_body_01_rotateX";
	rename -uid "3DF0ED3A-49CD-FB86-6CA3-37A5BDB10599";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kot[0:4]"  9 9 9 9 9;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTA -n "full_body_01_rotateY";
	rename -uid "8B95D78F-4183-02F6-F208-61842D84FEB5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kot[0:4]"  9 9 9 9 9;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTA -n "full_body_01_rotateZ";
	rename -uid "A871465D-4A11-D047-6945-83BC4E04DFEE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kot[0:4]"  9 9 9 9 9;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode standardSurface -n "standardSurface2";
	rename -uid "23E54E4C-48DB-F568-7430-9486117EE723";
	setAttr ".bc" -type "float3" 0.31704283 0.27680001 0.80000001 ;
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "372E3843-4EDD-0DC7-E7D1-FB8CA3535776";
	setAttr ".ihi" 0;
	setAttr -s 23 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "51ADC740-4A75-F380-9825-AC80FECBC56A";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".an" yes;
	setAttr ".ef" 48;
	setAttr ".pff" yes;
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -k on ".pa" 1;
	setAttr -k on ".al";
	setAttr -av ".dar";
	setAttr -k on ".ldar";
	setAttr -k on ".off";
	setAttr -k on ".fld";
	setAttr -k on ".zsl";
select -ne :defaultLightSet;
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
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
connectAttr "full_body_01_translateX.o" "full_body_01.tx";
connectAttr "full_body_01_translateY.o" "full_body_01.ty";
connectAttr "full_body_01_translateZ.o" "full_body_01.tz";
connectAttr "full_body_01_rotateX.o" "full_body_01.rx";
connectAttr "full_body_01_rotateY.o" "full_body_01.ry";
connectAttr "full_body_01_rotateZ.o" "full_body_01.rz";
connectAttr "torso_translateX.o" "torso.tx";
connectAttr "torso_translateY.o" "torso.ty";
connectAttr "torso_translateZ.o" "torso.tz";
connectAttr "torso_rotateX.o" "torso.rx";
connectAttr "torso_rotateY.o" "torso.ry";
connectAttr "torso_rotateZ.o" "torso.rz";
connectAttr "shoulders_translateX.o" "shoulders.tx";
connectAttr "shoulders_translateY.o" "shoulders.ty";
connectAttr "shoulders_translateZ.o" "shoulders.tz";
connectAttr "shoulders_rotateX.o" "shoulders.rx";
connectAttr "shoulders_rotateY.o" "shoulders.ry";
connectAttr "shoulders_rotateZ.o" "shoulders.rz";
connectAttr "right_arm_01_translateX.o" "right_arm_01.tx";
connectAttr "right_arm_01_translateY.o" "right_arm_01.ty";
connectAttr "right_arm_01_translateZ.o" "right_arm_01.tz";
connectAttr "right_arm_01_rotateX.o" "right_arm_01.rx";
connectAttr "right_arm_01_rotateY.o" "right_arm_01.ry";
connectAttr "right_arm_01_rotateZ.o" "right_arm_01.rz";
connectAttr "right_arm_02_translateX.o" "right_arm_02.tx";
connectAttr "right_arm_02_translateY.o" "right_arm_02.ty";
connectAttr "right_arm_02_translateZ.o" "right_arm_02.tz";
connectAttr "right_arm_02_rotateX.o" "right_arm_02.rx";
connectAttr "right_arm_02_rotateY.o" "right_arm_02.ry";
connectAttr "right_arm_02_rotateZ.o" "right_arm_02.rz";
connectAttr "right_arm_03_translateX.o" "right_arm_03.tx";
connectAttr "right_arm_03_translateY.o" "right_arm_03.ty";
connectAttr "right_arm_03_translateZ.o" "right_arm_03.tz";
connectAttr "right_arm_03_rotateX.o" "right_arm_03.rx";
connectAttr "right_arm_03_rotateY.o" "right_arm_03.ry";
connectAttr "right_arm_03_rotateZ.o" "right_arm_03.rz";
connectAttr "right_arm_04_translateX.o" "right_arm_04.tx";
connectAttr "right_arm_04_translateY.o" "right_arm_04.ty";
connectAttr "right_arm_04_translateZ.o" "right_arm_04.tz";
connectAttr "right_arm_04_rotateX.o" "right_arm_04.rx";
connectAttr "right_arm_04_rotateY.o" "right_arm_04.ry";
connectAttr "right_arm_04_rotateZ.o" "right_arm_04.rz";
connectAttr "right_arm_05_translateX.o" "right_arm_05.tx";
connectAttr "right_arm_05_translateY.o" "right_arm_05.ty";
connectAttr "right_arm_05_translateZ.o" "right_arm_05.tz";
connectAttr "right_arm_05_rotateX.o" "right_arm_05.rx";
connectAttr "right_arm_05_rotateY.o" "right_arm_05.ry";
connectAttr "right_arm_05_rotateZ.o" "right_arm_05.rz";
connectAttr "left_arm_01_translateX.o" "left_arm_01.tx";
connectAttr "left_arm_01_translateY.o" "left_arm_01.ty";
connectAttr "left_arm_01_translateZ.o" "left_arm_01.tz";
connectAttr "left_arm_01_rotateX.o" "left_arm_01.rx";
connectAttr "left_arm_01_rotateY.o" "left_arm_01.ry";
connectAttr "left_arm_01_rotateZ.o" "left_arm_01.rz";
connectAttr "left_arm_02_translateX.o" "left_arm_02.tx";
connectAttr "left_arm_02_translateY.o" "left_arm_02.ty";
connectAttr "left_arm_02_translateZ.o" "left_arm_02.tz";
connectAttr "left_arm_02_rotateX.o" "left_arm_02.rx";
connectAttr "left_arm_02_rotateY.o" "left_arm_02.ry";
connectAttr "left_arm_02_rotateZ.o" "left_arm_02.rz";
connectAttr "left_arm_03_translateX.o" "left_arm_03.tx";
connectAttr "left_arm_03_translateY.o" "left_arm_03.ty";
connectAttr "left_arm_03_translateZ.o" "left_arm_03.tz";
connectAttr "left_arm_03_rotateX.o" "left_arm_03.rx";
connectAttr "left_arm_03_rotateY.o" "left_arm_03.ry";
connectAttr "left_arm_03_rotateZ.o" "left_arm_03.rz";
connectAttr "left_arm_04_translateX.o" "left_arm_04.tx";
connectAttr "left_arm_04_translateY.o" "left_arm_04.ty";
connectAttr "left_arm_04_translateZ.o" "left_arm_04.tz";
connectAttr "left_arm_04_rotateX.o" "left_arm_04.rx";
connectAttr "left_arm_04_rotateY.o" "left_arm_04.ry";
connectAttr "left_arm_04_rotateZ.o" "left_arm_04.rz";
connectAttr "left_arm_05_translateX.o" "left_arm_05.tx";
connectAttr "left_arm_05_translateY.o" "left_arm_05.ty";
connectAttr "left_arm_05_translateZ.o" "left_arm_05.tz";
connectAttr "left_arm_05_rotateX.o" "left_arm_05.rx";
connectAttr "left_arm_05_rotateY.o" "left_arm_05.ry";
connectAttr "left_arm_05_rotateZ.o" "left_arm_05.rz";
connectAttr "neck_translateX.o" "neck.tx";
connectAttr "neck_translateY.o" "neck.ty";
connectAttr "neck_translateZ.o" "neck.tz";
connectAttr "neck_rotateX.o" "neck.rx";
connectAttr "neck_rotateY.o" "neck.ry";
connectAttr "neck_rotateZ.o" "neck.rz";
connectAttr "head_translateX.o" "head.tx";
connectAttr "head_translateY.o" "head.ty";
connectAttr "head_translateZ.o" "head.tz";
connectAttr "head_rotateX.o" "head.rx";
connectAttr "head_rotateY.o" "head.ry";
connectAttr "head_rotateZ.o" "head.rz";
connectAttr "hips_translateX.o" "hips.tx";
connectAttr "hips_translateY.o" "hips.ty";
connectAttr "hips_translateZ.o" "hips.tz";
connectAttr "hips_rotateX.o" "hips.rx";
connectAttr "hips_rotateY.o" "hips.ry";
connectAttr "hips_rotateZ.o" "hips.rz";
connectAttr "left_thigh_translateX.o" "left_thigh.tx";
connectAttr "left_thigh_translateY.o" "left_thigh.ty";
connectAttr "left_thigh_translateZ.o" "left_thigh.tz";
connectAttr "left_thigh_rotateX.o" "left_thigh.rx";
connectAttr "left_thigh_rotateY.o" "left_thigh.ry";
connectAttr "left_thigh_rotateZ.o" "left_thigh.rz";
connectAttr "left_shin_translateX.o" "left_shin.tx";
connectAttr "left_shin_translateY.o" "left_shin.ty";
connectAttr "left_shin_translateZ.o" "left_shin.tz";
connectAttr "left_shin_rotateX.o" "left_shin.rx";
connectAttr "left_shin_rotateY.o" "left_shin.ry";
connectAttr "left_shin_rotateZ.o" "left_shin.rz";
connectAttr "left_heel_translateX.o" "left_heel.tx";
connectAttr "left_heel_translateY.o" "left_heel.ty";
connectAttr "left_heel_translateZ.o" "left_heel.tz";
connectAttr "left_heel_rotateX.o" "left_heel.rx";
connectAttr "left_heel_rotateY.o" "left_heel.ry";
connectAttr "left_heel_rotateZ.o" "left_heel.rz";
connectAttr "left_foot_translateX.o" "left_foot.tx";
connectAttr "left_foot_translateY.o" "left_foot.ty";
connectAttr "left_foot_translateZ.o" "left_foot.tz";
connectAttr "left_foot_rotateX.o" "left_foot.rx";
connectAttr "left_foot_rotateY.o" "left_foot.ry";
connectAttr "left_foot_rotateZ.o" "left_foot.rz";
connectAttr "right_thigh_translateX.o" "right_thigh.tx";
connectAttr "right_thigh_translateY.o" "right_thigh.ty";
connectAttr "right_thigh_translateZ.o" "right_thigh.tz";
connectAttr "right_thigh_rotateX.o" "right_thigh.rx";
connectAttr "right_thigh_rotateY.o" "right_thigh.ry";
connectAttr "right_thigh_rotateZ.o" "right_thigh.rz";
connectAttr "right_shin_translateX.o" "right_shin.tx";
connectAttr "right_shin_translateY.o" "right_shin.ty";
connectAttr "right_shin_translateZ.o" "right_shin.tz";
connectAttr "right_shin_rotateX.o" "right_shin.rx";
connectAttr "right_shin_rotateY.o" "right_shin.ry";
connectAttr "right_shin_rotateZ.o" "right_shin.rz";
connectAttr "right_heel_translateX.o" "right_heel.tx";
connectAttr "right_heel_translateY.o" "right_heel.ty";
connectAttr "right_heel_translateZ.o" "right_heel.tz";
connectAttr "right_heel_rotateX.o" "right_heel.rx";
connectAttr "right_heel_rotateY.o" "right_heel.ry";
connectAttr "right_heel_rotateZ.o" "right_heel.rz";
connectAttr "right_foot_translateX.o" "right_foot.tx";
connectAttr "right_foot_translateY.o" "right_foot.ty";
connectAttr "right_foot_translateZ.o" "right_foot.tz";
connectAttr "right_foot_rotateX.o" "right_foot.rx";
connectAttr "right_foot_rotateY.o" "right_foot.ry";
connectAttr "right_foot_rotateZ.o" "right_foot.rz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "standardSurface2.oc" "standardSurface2SG.ss";
connectAttr "torsoShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "right_shinShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "right_thighShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "left_footShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "left_heelShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "left_shinShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "left_thighShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "hipsShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "right_footShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "right_heelShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "headShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "neckShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "left_arm_05Shape.iog" "standardSurface2SG.dsm" -na;
connectAttr "left_arm_Shape4.iog" "standardSurface2SG.dsm" -na;
connectAttr "left_arm_Shape3.iog" "standardSurface2SG.dsm" -na;
connectAttr "left_arm_Shape2.iog" "standardSurface2SG.dsm" -na;
connectAttr "left_arm_Shape1.iog" "standardSurface2SG.dsm" -na;
connectAttr "right_arm_Shape5.iog" "standardSurface2SG.dsm" -na;
connectAttr "right_arm_Shape4.iog" "standardSurface2SG.dsm" -na;
connectAttr "right_arm_Shape3.iog" "standardSurface2SG.dsm" -na;
connectAttr "right_arm_Shape2.iog" "standardSurface2SG.dsm" -na;
connectAttr "right_arm_Shape1.iog" "standardSurface2SG.dsm" -na;
connectAttr "shouldersShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "standardSurface2SG.msg" "materialInfo1.sg";
connectAttr "standardSurface2.msg" "materialInfo1.m";
connectAttr "standardSurface2.msg" "materialInfo1.t" -na;
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of WhiteBoxBodywHierarchalRig.ma
