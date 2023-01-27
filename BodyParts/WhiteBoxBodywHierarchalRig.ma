//Maya ASCII 2023 scene
//Name: WhiteBoxBodywHierarchalRig.ma
//Last modified: Fri, Jan 27, 2023 12:19:50 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22623)";
fileInfo "UUID" "2AD4CB90-459E-0A3C-DDA8-53A4A0BEBEB1";
createNode transform -s -n "persp";
	rename -uid "535BEC9B-4193-448A-70AF-03BA791240C6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -27.618225939644926 -2.4587951910898842 0.96730205841271466 ;
	setAttr ".r" -type "double3" -3.0000000000006839 -807.99999999984595 1.1391835777500909e-14 ;
	setAttr ".rpt" -type "double3" 8.1018386925971054e-17 -2.1030864753834091e-17 -5.0595678966409615e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "85E523D5-486C-FC9D-E4B9-D2BEF31C614D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 27.675136057947039;
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
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9579FCA1-4C60-ED7C-1D43-E5ADBBE97E3E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
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
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "6CD5D729-486C-EE39-EAA1-05A40BB385B9";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "218AF730-447C-5A08-8868-B789EB519073";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "08389428-49CA-C9D5-5BA6-DDB92D0F5F0D";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polySphere -n "polySphere1";
	rename -uid "FABA7E97-475C-5544-C337-BDA5D65606DE";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "3FF00B5B-46AC-FBD7-2F0A-FDA61737B3A7";
	setAttr ".r" 4;
	setAttr ".h" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube1";
	rename -uid "279C9523-4858-26B0-AF9F-05A6399DF90C";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "74F44E48-4436-0755-7C5F-56A674E59663";
	setAttr ".cuv" 4;
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
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2524\n            -height 770\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2524\\n    -height 770\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2524\\n    -height 770\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CF7F8D37-4A75-CA3E-EA4F-EAB53102A790";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 48 -ast 0 -aet 630 ";
	setAttr ".st" 6;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "757FA32D-41EC-411F-0368-F29047242A6C";
	setAttr ".txf" -type "matrix" 0.68817162617002547 0 0 0 0 0.3354179914784905 0 0
		 0 0 0.41557827594596347 0 3.5469160027865816 -1.8664309633271654 0 1;
createNode polyCube -n "polyCube3";
	rename -uid "1284AB1E-4424-3D1E-F1F8-AAA9FB69A3C0";
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	rename -uid "EBDE475E-413F-7D2B-CBE4-4F9118378CA1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" -0.096306816 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.096306816 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.096306816 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.096306816 0 0 ;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "A01930C8-425D-9EFA-935C-AD8F9CC7A57D";
	setAttr ".txf" -type "matrix" 0.42733298874839604 0 0 0 0 1.6620566466073738 0 0
		 0 0 0.59957761038842505 0 -0.23071815096232146 -4.7935548176105049 0 1;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "0871C050-43D5-B2F9-F9A2-F4B30C139E03";
	setAttr ".txf" -type "matrix" 0.48373102677075958 0 0 0 0 0.48373102677075958 0 0
		 0 0 0.48373102677075958 0 0 -0.75127947007243767 0 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "E90548B2-401E-8F4B-8516-39A71307A665";
	setAttr ".txf" -type "matrix" 1.1832708271489296 0 0 0 0 0.48296768441084004 0 0
		 0 0 1.0866772902195376 0 0 -1.8683711769226996 0 1;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "96261DE4-466C-7BE4-D9DF-A0A2DF0138B0";
	setAttr ".txf" -type "matrix" 0.059057575968074177 0 0 0 0 0.034060348987270769 0 0
		 0 0 0.059057575968074177 0 0 -1.4214581596912848 0 1;
createNode transformGeometry -n "transformGeometry6";
	rename -uid "BFF9C3B3-4469-4C00-8A46-9D92358D29BB";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9201356475674856 1.8683711769226996 0 1;
createNode transformGeometry -n "transformGeometry7";
	rename -uid "3970EE9D-4425-1972-2FCB-78993653C0D0";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.2826944834938119 -0.0019402135955342015 0 1;
createNode transformGeometry -n "transformGeometry8";
	rename -uid "40C6905C-48D9-12DE-0B1A-40AFC7100B77";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.2290549278259277 0 1;
createNode transformGeometry -n "transformGeometry9";
	rename -uid "CA7C61EE-416B-197F-80CB-17BD7F3375D0";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.5917599201202393 0 1;
createNode transformGeometry -n "transformGeometry10";
	rename -uid "2A3F1982-4BCD-61C3-A9CF-008901DA2D5C";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.36270499229431152 0 1;
createNode transformGeometry -n "transformGeometry11";
	rename -uid "66F4FB31-4C6F-4ED4-DE2C-33A01C7F8626";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.626887321472168 0 1;
createNode transformGeometry -n "transformGeometry12";
	rename -uid "20D5A267-4B85-1A20-B90D-699AFFC732DA";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.2028301310612974 -0.23954364185499744 0 1;
createNode transformGeometry -n "transformGeometry13";
	rename -uid "D90A76ED-4F91-ED44-D190-45A3901A84FE";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.035127401351928711 0 1;
createNode transformGeometry -n "transformGeometry14";
	rename -uid "753FC219-4DD4-631E-8E96-23AAF2257E06";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.035127401351928711 0 1;
createNode transformGeometry -n "transformGeometry15";
	rename -uid "BABB536B-489F-B6AD-6062-1182D89BDF95";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.23071815096232146 3.9625263214111328 0 1;
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
		 24 0 30 0.87500000000000044 36 0 42 -24.000000000000004 48 -28;
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
	setAttr -s 9 ".ktv[0:8]"  0 0 6 -2.0000000000000004 12 0 18 -19 24 -28
		 30 -6.9999999999999991 36 8 42 5.5833333333333321 48 0;
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
		 12 -17.000000000000004 18 8.0000000000000018 24 28 30 29.244791666666664 36 24.416666666666664
		 42 18.323350694444443 48 12.000000000000002;
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
		 18 -0.99999999999999978 24 23 30 26.645833333333336 36 24.333333333333332 42 20.779513888888889
		 48 17;
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
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 24 0 36 0;
	setAttr -s 4 ".kot[0:3]"  9 9 9 9;
	setAttr -s 4 ".ktl[2:3]" no yes;
createNode animCurveTL -n "full_body_01_translateY";
	rename -uid "885FE137-4B4E-D351-969A-5189BCA50CA0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0.14905967003662646 24 0 36 0.149;
	setAttr -s 4 ".kit[0:3]"  2 1 2 2;
	setAttr -s 4 ".kix[1:3]"  0.99771833239266816 0.958320897245723 0.95835220440576607;
	setAttr -s 4 ".kiy[1:3]"  0.067513918621225744 -0.28569399346530255 
		0.28558895691291825;
createNode animCurveTL -n "full_body_01_translateZ";
	rename -uid "095696BB-4C0D-7C69-F65C-B489A52E1932";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 24 0 36 0;
	setAttr -s 4 ".kot[0:3]"  9 9 9 9;
	setAttr -s 4 ".ktl[2:3]" no yes;
createNode animCurveTA -n "full_body_01_rotateX";
	rename -uid "3DF0ED3A-49CD-FB86-6CA3-37A5BDB10599";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 24 0 36 0;
	setAttr -s 4 ".kot[0:3]"  9 9 9 9;
	setAttr -s 4 ".ktl[2:3]" no yes;
createNode animCurveTA -n "full_body_01_rotateY";
	rename -uid "8B95D78F-4183-02F6-F208-61842D84FEB5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 24 0 36 0;
	setAttr -s 4 ".kot[0:3]"  9 9 9 9;
	setAttr -s 4 ".ktl[2:3]" no yes;
createNode animCurveTA -n "full_body_01_rotateZ";
	rename -uid "A871465D-4A11-D047-6945-83BC4E04DFEE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 24 0 36 0;
	setAttr -s 4 ".kot[0:3]"  9 9 9 9;
	setAttr -s 4 ".ktl[2:3]" no yes;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 6;
	setAttr ".unw" 6;
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
	setAttr -s 2 ".st";
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
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 23 ".dsm";
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
connectAttr "transformGeometry11.og" "shouldersShape.i";
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
connectAttr "transformGeometry12.og" "left_arm_Shape3.i";
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
connectAttr "transformGeometry13.og" "neckShape.i";
connectAttr "head_translateX.o" "head.tx";
connectAttr "head_translateY.o" "head.ty";
connectAttr "head_translateZ.o" "head.tz";
connectAttr "head_rotateX.o" "head.rx";
connectAttr "head_rotateY.o" "head.ry";
connectAttr "head_rotateZ.o" "head.rz";
connectAttr "transformGeometry14.og" "headShape.i";
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
connectAttr "transformGeometry15.og" "right_thighShape.i";
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
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCube2.out" "transformGeometry1.ig";
connectAttr "polyCube3.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "transformGeometry2.ig";
connectAttr "polySphere1.out" "transformGeometry3.ig";
connectAttr "polyCube1.out" "transformGeometry4.ig";
connectAttr "polyCylinder1.out" "transformGeometry5.ig";
connectAttr "transformGeometry1.og" "transformGeometry6.ig";
connectAttr "transformGeometry6.og" "transformGeometry7.ig";
connectAttr "transformGeometry3.og" "transformGeometry8.ig";
connectAttr "transformGeometry5.og" "transformGeometry9.ig";
connectAttr "transformGeometry8.og" "transformGeometry10.ig";
connectAttr "transformGeometry4.og" "transformGeometry11.ig";
connectAttr "transformGeometry7.og" "transformGeometry12.ig";
connectAttr "transformGeometry9.og" "transformGeometry13.ig";
connectAttr "transformGeometry10.og" "transformGeometry14.ig";
connectAttr "transformGeometry2.og" "transformGeometry15.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "headShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "neckShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "shouldersShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "torsoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "hipsShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "left_arm_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "left_arm_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "left_arm_Shape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "left_arm_Shape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "left_arm_05Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "right_arm_Shape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "right_arm_Shape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "right_arm_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "right_arm_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "right_arm_Shape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "right_thighShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "left_thighShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "right_shinShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "left_shinShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "left_heelShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "right_heelShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "left_footShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "right_footShape.iog" ":initialShadingGroup.dsm" -na;
// End of WhiteBoxBodywHierarchalRig.ma
