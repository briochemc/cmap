
function cm = vik(n, opt_interp)
% Colormap: vik

%-- Parse inputs ---------------------------------------------------------%
if ~exist('n', 'var'); n = []; end
if isempty(n)
   f = get(groot,'CurrentFigure');
   if isempty(f)
      n = size(get(groot,'DefaultFigureColormap'),1);
   else
      n = size(f.Colormap,1);
   end
end

% by default, interpolate in rgb space
if ~exist('opt_interp','var'); opt_interp = []; end
if isempty(opt_interp); opt_interp = 'rgb'; end
%-------------------------------------------------------------------------%

% Data for colormap:
cm = [
	0.001328235	0.069835904	0.379528932
	0.002366405	0.076475110	0.383517529
	0.003304186	0.083083401	0.387487097
	0.004145865	0.089589984	0.391477433
	0.004896848	0.095947926	0.395452623
	0.005563224	0.102274066	0.399408685
	0.006151213	0.108500451	0.403387716
	0.006667591	0.114685697	0.407339232
	0.007119162	0.120845020	0.411288320
	0.007511588	0.126958030	0.415229665
	0.007850273	0.133067589	0.419165635
	0.008141265	0.139092316	0.423079459
	0.008391196	0.145170599	0.427006030
	0.008605694	0.151143690	0.430910336
	0.008789502	0.157139758	0.434809263
	0.008946617	0.163152434	0.438690925
	0.009080210	0.169142151	0.442586589
	0.009193480	0.175102514	0.446459184
	0.009289655	0.181052384	0.450336783
	0.009371859	0.187051358	0.454211980
	0.009443069	0.193028288	0.458077069
	0.009506147	0.198999324	0.461951469
	0.009563905	0.205011090	0.465816183
	0.009619203	0.211021489	0.469706672
	0.009675050	0.217046771	0.473570728
	0.009734725	0.223083852	0.477461479
	0.009801889	0.229122662	0.481351516
	0.009880857	0.235206011	0.485249535
	0.009977125	0.241276660	0.489160509
	0.010097977	0.247385557	0.493080206
	0.010254049	0.253515996	0.497020443
	0.010462672	0.259675169	0.500973955
	0.010755100	0.265853216	0.504937634
	0.011176429	0.272037141	0.508925467
	0.011716236	0.278296248	0.512923303
	0.012285520	0.284553612	0.516953147
	0.012934007	0.290865204	0.520998416
	0.013789683	0.297213646	0.525074239
	0.014838362	0.303576560	0.529184013
	0.016131121	0.310015185	0.533308383
	0.017710924	0.316474466	0.537484827
	0.019630476	0.322986340	0.541676619
	0.021948188	0.329550091	0.545930514
	0.024729583	0.336144123	0.550209546
	0.028047477	0.342825636	0.554538106
	0.031980322	0.349542896	0.558906319
	0.036812256	0.356332387	0.563340536
	0.042228501	0.363171340	0.567811454
	0.048008411	0.370085828	0.572345015
	0.054292469	0.377080365	0.576932818
	0.060962545	0.384129271	0.581571115
	0.068080903	0.391264583	0.586279946
	0.075457349	0.398460422	0.591041796
	0.083245671	0.405740044	0.595867734
	0.091424550	0.413087915	0.600753569
	0.099831864	0.420498629	0.605696916
	0.108594820	0.427999665	0.610710637
	0.117693681	0.435566393	0.615770206
	0.127041706	0.443193687	0.620895309
	0.136702209	0.450888045	0.626062457
	0.146607464	0.458643396	0.631288662
	0.156787222	0.466456556	0.636559690
	0.167187367	0.474324183	0.641865504
	0.177806968	0.482238374	0.647218430
	0.188606377	0.490190882	0.652598741
	0.199580204	0.498192890	0.658021174
	0.210782505	0.506201020	0.663464540
	0.222120094	0.514262906	0.668924439
	0.233602488	0.522322459	0.674402988
	0.245230957	0.530414323	0.679893795
	0.256999294	0.538517078	0.685405328
	0.268867375	0.546617454	0.690908493
	0.280796541	0.554716862	0.696428456
	0.292852270	0.562822425	0.701934843
	0.304984908	0.570907289	0.707447831
	0.317174392	0.578997258	0.712949726
	0.329437691	0.587064216	0.718447093
	0.341729047	0.595122553	0.723934269
	0.354066879	0.603164194	0.729411692
	0.366459121	0.611186371	0.734877138
	0.378861611	0.619189166	0.740324605
	0.391305435	0.627158976	0.745756826
	0.403759602	0.635113918	0.751183377
	0.416226949	0.643045578	0.756582201
	0.428711001	0.650955797	0.761968485
	0.441199379	0.658835562	0.767341195
	0.453696641	0.666695648	0.772699379
	0.466195440	0.674536714	0.778044228
	0.478697481	0.682348644	0.783369079
	0.491208390	0.690142732	0.788682348
	0.503691040	0.697909983	0.793980224
	0.516177666	0.705661130	0.799260348
	0.528677037	0.713387165	0.804524904
	0.541148538	0.721090089	0.809774701
	0.553624045	0.728777521	0.815010041
	0.566095831	0.736441303	0.820229496
	0.578556890	0.744089440	0.825435212
	0.591013576	0.751717865	0.830626390
	0.603468052	0.759314157	0.835793236
	0.615907808	0.766896232	0.840940546
	0.628351376	0.774451768	0.846057775
	0.640778696	0.781987658	0.851147140
	0.653202886	0.789485475	0.856205780
	0.665631051	0.796944737	0.861214136
	0.678050628	0.804370954	0.866171991
	0.690457129	0.811741557	0.871059033
	0.702867911	0.819047879	0.875865853
	0.715264685	0.826289515	0.880566566
	0.727645637	0.833438549	0.885145903
	0.740018512	0.840478578	0.889569556
	0.752353929	0.847379722	0.893806883
	0.764662207	0.854125010	0.897821191
	0.776917931	0.860677603	0.901564512
	0.789096246	0.866991378	0.904992047
	0.801170235	0.873031264	0.908042529
	0.813109738	0.878737549	0.910653430
	0.824869741	0.884061994	0.912761422
	0.836395984	0.888933859	0.914301594
	0.847617447	0.893289332	0.915195007
	0.858469606	0.897073966	0.915385319
	0.868874148	0.900205698	0.914811774
	0.878729166	0.902635611	0.913418469
	0.887965195	0.904302615	0.911163829
	0.896497481	0.905177577	0.908034235
	0.904242181	0.905220841	0.904013082
	0.911150805	0.904421924	0.899131706
	0.917175113	0.902800273	0.893409432
	0.922285434	0.900366911	0.886910604
	0.926482430	0.897172513	0.879687063
	0.929789443	0.893256234	0.871826211
	0.932236416	0.888697756	0.863395649
	0.933879692	0.883552029	0.854475620
	0.934782441	0.877893476	0.845151849
	0.935012819	0.871795003	0.835492532
	0.934644329	0.865313232	0.825561025
	0.933751570	0.858521949	0.815420996
	0.932407575	0.851468980	0.805112288
	0.930681791	0.844208345	0.794684977
	0.928621734	0.836777558	0.784169125
	0.926298018	0.829214874	0.773579336
	0.923752077	0.821544540	0.762957652
	0.921017481	0.813795382	0.752313495
	0.918147365	0.805996737	0.741659030
	0.915155684	0.798156688	0.731008151
	0.912080198	0.790294048	0.720369975
	0.908933210	0.782420880	0.709752117
	0.905741094	0.774539899	0.699149807
	0.902506295	0.766669786	0.688588339
	0.899249073	0.758811753	0.678050876
	0.895973479	0.750972626	0.667549850
	0.892690318	0.743148151	0.657085999
	0.889402304	0.735345399	0.646657241
	0.886118222	0.727569288	0.636273911
	0.882830934	0.719826401	0.625923226
	0.879556044	0.712106114	0.615618349
	0.876289401	0.704419309	0.605356956
	0.873033483	0.696764069	0.595141292
	0.869784461	0.689144177	0.584971676
	0.866551317	0.681541042	0.574832245
	0.863332565	0.673984781	0.564746478
	0.860121289	0.666452703	0.554708406
	0.856919586	0.658956771	0.544708802
	0.853732311	0.651499510	0.534753346
	0.850561985	0.644060956	0.524841548
	0.847401961	0.636670038	0.514973926
	0.844257717	0.629295566	0.505145746
	0.841125050	0.621956587	0.495369215
	0.838004655	0.614653120	0.485627201
	0.834894825	0.607391532	0.475940899
	0.831801737	0.600143584	0.466284331
	0.828715418	0.592937808	0.456675317
	0.825639184	0.585757526	0.447108749
	0.822582430	0.578599530	0.437594953
	0.819527578	0.571477594	0.428106125
	0.816495683	0.564387937	0.418656512
	0.813463263	0.557328306	0.409260261
	0.810445757	0.550284750	0.399892097
	0.807443169	0.543274086	0.390575402
	0.804446407	0.536287575	0.381299432
	0.801454395	0.529329215	0.372039829
	0.798474801	0.522379592	0.362835252
	0.795500044	0.515460483	0.353660437
	0.792534535	0.508574875	0.344523230
	0.789572922	0.501691688	0.335435238
	0.786617059	0.494826616	0.326342726
	0.783656974	0.487977058	0.317312495
	0.780695458	0.481123108	0.308300433
	0.777737123	0.474295072	0.299326648
	0.774762722	0.467464029	0.290352026
	0.771787685	0.460619747	0.281424281
	0.768786735	0.453783078	0.272507787
	0.765775632	0.446929279	0.263639536
	0.762723783	0.440054885	0.254763595
	0.759638372	0.433147102	0.245871990
	0.756510239	0.426199570	0.237047323
	0.753315529	0.419215582	0.228189718
	0.750050728	0.412163266	0.219330312
	0.746698318	0.405028011	0.210469748
	0.743239023	0.397818875	0.201593474
	0.739650734	0.390493174	0.192739485
	0.735898545	0.383059725	0.183852451
	0.731987646	0.375473110	0.174976515
	0.727864640	0.367742977	0.166045259
	0.723516119	0.359851852	0.157130993
	0.718914628	0.351766032	0.148211249
	0.714027850	0.343502688	0.139282206
	0.708841494	0.335047609	0.130457962
	0.703317565	0.326354215	0.121544503
	0.697448116	0.317502066	0.112841240
	0.691227364	0.308462433	0.104131688
	0.684652541	0.299263678	0.095633454
	0.677734477	0.289916489	0.087349936
	0.670475592	0.280477191	0.079197308
	0.662904019	0.271015428	0.071510186
	0.655048066	0.261519816	0.064078853
	0.646968712	0.252081219	0.057104272
	0.638685848	0.242710715	0.050618295
	0.630260539	0.233488477	0.044749614
	0.621722380	0.224448924	0.039414417
	0.613134970	0.215657206	0.034829500
	0.604538945	0.207085947	0.031072436
	0.595946712	0.198740745	0.028212332
	0.587403024	0.190700019	0.026019300
	0.578936567	0.182918145	0.024396356
	0.570544928	0.175422656	0.023256563
	0.562267726	0.168171065	0.022522866
	0.554075503	0.161201841	0.022109984
	0.546006686	0.154400195	0.021861054
	0.538043236	0.147854466	0.021737444
	0.530181567	0.141491308	0.021722426
	0.522424029	0.135276120	0.021800334
	0.514776103	0.129208655	0.021956783
	0.507212516	0.123272169	0.022178795
	0.499732764	0.117486698	0.022454836
	0.492348219	0.111817938	0.022774791
	0.485034156	0.106209429	0.023129888
	0.477801308	0.100607473	0.023512580
	0.470638530	0.095156485	0.023916414
	0.463530216	0.089667802	0.024335880
	0.456494143	0.084258412	0.024766259
	0.449521139	0.078741180	0.025203473
	0.442603403	0.073404461	0.025643946
	0.435737093	0.067903768	0.026084476
	0.428917934	0.062414984	0.026522117
	0.422146030	0.056832293	0.026954078
	0.415436947	0.051116026	0.027377629
	0.408767695	0.045352256	0.027790049
	0.402132412	0.039448073	0.028188565
	0.395561959	0.033385424	0.028570299
	0.389015012	0.027843923	0.028932192
	0.382496008	0.022586164	0.029271003
	0.376028198	0.017607552	0.029583356
	0.369577911	0.012889910	0.029865830
	0.363161454	0.008242841	0.030114922
	0.356785431	0.004034507	0.030327135
	0.350423052	6.11e-05000	0.030499163
];

%-- Modify the colormap by interpolation ---------------------------------%
%   Note: Interpolation can be done in hsv or rgb space depending on opt_interp.
p = size(cm,1); % default size of colormap
if strcmp(opt_interp, 'hsv')
    hsv = rgb2hsv(cm);
    hsv = interp1(1:p, hsv, linspace(1,p,n), 'linear');
    cm = hsv2rgb(hsv);
elseif strcmp(opt_interp, 'none') % do nothing
else
    cm = interp1(1:p, cm, linspace(1,p,n), 'linear');
end

end
