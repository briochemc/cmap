
function cm = devon(n, opt_interp)
% Colormap: devon
% Source:   Scientific colour maps
% Authors:	Fabio Crameri

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


% data for colormap
cm = [
    0.171032357	0.100401677	0.299782361
    0.170867743	0.104143718	0.303372473
    0.170677321	0.107856084	0.306988537
    0.170462951	0.111594289	0.310613915
    0.170226899	0.1152402	0.314216476
    0.169971799	0.118939139	0.317840348
    0.169698424	0.122543076	0.321462319
    0.16940414	0.126240071	0.325088268
    0.169084493	0.129892011	0.32873846
    0.168737288	0.133500689	0.332383208
    0.168373026	0.137129332	0.336011961
    0.168007217	0.140766945	0.33967262
    0.167646117	0.144377544	0.343318795
    0.167277793	0.14799007	0.346976943
    0.166887826	0.151600107	0.350639156
    0.16647566	0.155235228	0.354293598
    0.166050791	0.158874918	0.35796885
    0.165623343	0.162508084	0.361639008
    0.165203475	0.166120981	0.365311749
    0.164797107	0.169787057	0.369002137
    0.164391186	0.173410911	0.37268175
    0.163968147	0.177075037	0.3763912
    0.163527112	0.18071627	0.380084732
    0.16308066	0.184398475	0.383795344
    0.162637137	0.188101227	0.387502107
    0.162198135	0.191753825	0.391237679
    0.161760407	0.195449082	0.394962109
    0.161309904	0.199141081	0.398700175
    0.160837265	0.202866247	0.402443427
    0.160362151	0.206619757	0.406214012
    0.159907653	0.210329239	0.409984194
    0.159470684	0.214083818	0.413758218
    0.159039267	0.217838643	0.417554513
    0.158600917	0.221601219	0.421348919
    0.15814384	0.225383595	0.42518112
    0.157676416	0.22917939	0.429012842
    0.157227828	0.232976866	0.432869621
    0.156805624	0.2368287	0.436743973
    0.156385931	0.240632213	0.440630821
    0.155952417	0.244485048	0.444564288
    0.15551741	0.248387201	0.44850705
    0.155096649	0.252261006	0.45249068
    0.154693926	0.256147965	0.456491626
    0.154308643	0.260083579	0.460536221
    0.153942606	0.264032519	0.464642491
    0.153600115	0.267966179	0.468776659
    0.153285895	0.271942136	0.47295778
    0.153004816	0.275974897	0.477209117
    0.152762062	0.279975445	0.481516274
    0.152563323	0.284007279	0.485886395
    0.152414787	0.288059397	0.490336542
    0.152323125	0.292137259	0.494857003
    0.152295485	0.296219487	0.499443686
    0.152339426	0.300309833	0.504136167
    0.152462814	0.304414479	0.508899197
    0.152673777	0.308528618	0.513749145
    0.152980604	0.312617537	0.518687715
    0.153391568	0.316727371	0.523706109
    0.153914597	0.320817319	0.528817464
    0.154555473	0.324863853	0.533992922
    0.15532286	0.328918529	0.539260074
    0.156229384	0.332926082	0.544597917
    0.157205716	0.336879494	0.549998014
    0.158378435	0.340797363	0.555448192
    0.159615881	0.344654849	0.560957419
    0.161054543	0.348463122	0.566510783
    0.162589485	0.352195202	0.572089963
    0.164257801	0.355879295	0.57768886
    0.166002989	0.359470288	0.583312943
    0.167904301	0.362993313	0.588941141
    0.169932499	0.366456525	0.594580649
    0.172024522	0.369823003	0.600211924
    0.174249209	0.373129983	0.605829726
    0.176531173	0.376378667	0.611448678
    0.17894867	0.379539635	0.617045461
    0.18140315	0.382648301	0.622622358
    0.183975574	0.385695601	0.62819039
    0.186618595	0.38871099	0.633735957
    0.189340659	0.391669393	0.639261959
    0.192134341	0.394586574	0.644771493
    0.195027461	0.397481212	0.650276363
    0.197981891	0.400359207	0.655767467
    0.201029546	0.403212656	0.661243196
    0.204230575	0.406064634	0.666711132
    0.207482782	0.408906335	0.672184358
    0.210863015	0.411760737	0.677650769
    0.214377989	0.414631352	0.683107739
    0.218032875	0.417527603	0.688570946
    0.221825681	0.420436421	0.694021493
    0.225815695	0.42338356	0.699481229
    0.229929874	0.426373063	0.704938666
    0.234292419	0.429408167	0.710390296
    0.238812701	0.432492252	0.715835848
    0.243553465	0.43561673	0.721256733
    0.248547352	0.438782453	0.726672371
    0.253725376	0.44202814	0.732065506
    0.259151698	0.445303236	0.737421847
    0.264778046	0.448649371	0.742750294
    0.270677182	0.452043307	0.748029177
    0.276772902	0.455479713	0.753249678
    0.283094926	0.458970607	0.758422164
    0.289621709	0.462495025	0.763515613
    0.296350906	0.466068258	0.76853535
    0.303256776	0.469687853	0.773473539
    0.310366694	0.473306945	0.778323586
    0.317597431	0.476973549	0.78307201
    0.324969886	0.480646923	0.78772137
    0.332493575	0.484333974	0.792266595
    0.340092942	0.488041675	0.796700651
    0.347785859	0.491739247	0.801030195
    0.355554895	0.495424593	0.805247249
    0.36335907	0.499108143	0.809363309
    0.371216766	0.502778391	0.813363285
    0.379112839	0.506438156	0.817267487
    0.387014022	0.51008156	0.821071563
    0.39493505	0.513708762	0.824779893
    0.402846613	0.517310203	0.828402254
    0.410757935	0.520881138	0.83194291
    0.418634268	0.524436082	0.835398037
    0.426503914	0.527965974	0.838782157
    0.434345795	0.53147717	0.842105324
    0.442172221	0.534963565	0.845358818
    0.449948358	0.538437445	0.848559361
    0.457694606	0.541872405	0.851707131
    0.46540555	0.545306807	0.854809999
    0.473084709	0.548723742	0.857862812
    0.480728906	0.552119253	0.86087928
    0.488340809	0.555493477	0.86386175
    0.495893846	0.558869298	0.86679725
    0.503414082	0.562248727	0.869704591
    0.510894633	0.565596597	0.872582375
    0.518335113	0.568956218	0.875423677
    0.525716196	0.57232032	0.878232607
    0.533048949	0.575681748	0.881008483
    0.540327848	0.579041604	0.883753604
    0.547548311	0.582405003	0.886461277
    0.554709675	0.585791851	0.88912994
    0.561804089	0.589168954	0.89176029
    0.568813022	0.592582617	0.894350722
    0.57576012	0.595989182	0.896894794
    0.582600309	0.599422821	0.89938961
    0.589354171	0.602863944	0.901830437
    0.596013545	0.60632186	0.904217419
    0.602558305	0.609799688	0.906549818
    0.60899346	0.613287807	0.908814774
    0.615285163	0.616802533	0.91101724
    0.621456063	0.620324303	0.913149512
    0.627489745	0.623854431	0.91520563
    0.63337708	0.627388894	0.917196962
    0.639110224	0.630941141	0.919098805
    0.644686461	0.634493328	0.920928907
    0.650113992	0.638043142	0.922685429
    0.655374404	0.641593957	0.924355099
    0.660476086	0.64514462	0.925950901
    0.665422525	0.64869515	0.927463378
    0.670216113	0.652234345	0.928903901
    0.674844671	0.65576658	0.930274139
    0.679328869	0.659280633	0.931567065
    0.683675029	0.662793755	0.932792968
    0.687887739	0.666281288	0.933956903
    0.691972794	0.669768999	0.935062381
    0.695935753	0.673235102	0.936114464
    0.699783221	0.676689679	0.937110404
    0.703538246	0.68012261	0.938057744
    0.70719731	0.683554773	0.938963864
    0.710774716	0.686972249	0.939833508
    0.714270893	0.690375757	0.940666032
    0.71771306	0.693770977	0.941466144
    0.72108322	0.697160208	0.942246217
    0.72441374	0.700542896	0.94299864
    0.727694885	0.703915134	0.943729669
    0.730940144	0.707284199	0.944445864
    0.734158225	0.710650513	0.945147531
    0.737344836	0.714008855	0.94583237
    0.740511616	0.717375349	0.946509481
    0.74366318	0.720725475	0.947182265
    0.746797312	0.724084916	0.947844131
    0.749918004	0.727442778	0.94849957
    0.753033672	0.730801844	0.949152139
    0.756148468	0.734164949	0.949801512
    0.759251483	0.737524385	0.950449682
    0.762355242	0.740886813	0.951095468
    0.765463808	0.744256997	0.951735849
    0.768558253	0.747630844	0.952378042
    0.771666755	0.751005365	0.953023502
    0.774765181	0.754379965	0.953665068
    0.777875554	0.757756536	0.95430513
    0.780981009	0.761138706	0.954947103
    0.78409591	0.764525567	0.955590728
    0.787206595	0.767911565	0.956232068
    0.790319313	0.77131216	0.956871604
    0.793443531	0.774703305	0.95751675
    0.796559065	0.778108407	0.958163077
    0.799691492	0.781514612	0.958806143
    0.80281445	0.7849238	0.959450207
    0.805948316	0.788333602	0.9600969
    0.809087845	0.79174918	0.960744392
    0.812223279	0.79516922	0.961388623
    0.815367449	0.798594207	0.96203471
    0.818510416	0.802020014	0.962686339
    0.821665899	0.805450409	0.963335826
    0.824815228	0.808891404	0.963983906
    0.827972004	0.812326553	0.964634265
    0.831138154	0.815773091	0.965286032
    0.834302186	0.819214257	0.965938772
    0.837470267	0.822670411	0.966592902
    0.840640114	0.826122886	0.967249076
    0.843810427	0.829584722	0.967904595
    0.846988748	0.83304296	0.968557775
    0.850173721	0.836510478	0.969212144
    0.85335577	0.839983824	0.969868375
    0.856546984	0.84345112	0.970525702
    0.859742096	0.846928677	0.971184142
    0.862940002	0.85041186	0.971844482
    0.866137049	0.853894864	0.972505868
    0.869340409	0.857385522	0.973164806
    0.87254785	0.8608794	0.973823331
    0.87575781	0.864379277	0.974483936
    0.878968786	0.867880635	0.975145877
    0.882186898	0.871383645	0.975808796
    0.885409408	0.874890122	0.976473276
    0.888635421	0.878402976	0.97713989
    0.891862596	0.881919566	0.977804269
    0.895095295	0.885439488	0.978467732
    0.898325945	0.888964377	0.979137383
    0.901565901	0.892492162	0.979806791
    0.904809439	0.896022343	0.980473507
    0.908057107	0.899558936	0.981142088
    0.911302667	0.903097938	0.981813217
    0.914555813	0.906639245	0.982483539
    0.917813273	0.910187315	0.983150984
    0.921066159	0.913737454	0.983823408
    0.92432984	0.91729248	0.984498264
    0.927593343	0.920842519	0.985169579
    0.930866106	0.924405829	0.985841549
    0.934133221	0.927969637	0.98651603
    0.937411794	0.931540194	0.987190841
    0.940688564	0.935112506	0.987861918
    0.943967739	0.938690038	0.988535606
    0.947250672	0.942271873	0.989213492
    0.95053411	0.945851265	0.989887669
    0.953821395	0.949437437	0.990561081
    0.957106353	0.953030449	0.99123592
    0.96039917	0.956620872	0.991910896
    0.963687311	0.960218718	0.992586872
    0.966981412	0.963815071	0.993261613
    0.970272872	0.967421443	0.993932591
    0.9735678	0.971023801	0.994603219
    0.976861653	0.974631136	0.99527426
    0.980158155	0.978241981	0.995944848
    0.983450136	0.981861307	0.996615099
    0.986748229	0.985477414	0.997284835
    0.990040351	0.989097632	0.997954062
    0.993335138	0.992720709	0.998623024
    0.996621456	0.996339929	0.999289787
    0.999916013	0.999970402	0.999951606
   ];


%-- Modify the colormap by interpolation ---------------------------------%
%   Note: Interpolation can be done in hsv or rgb space depending on opt_interp.
p = size(cm,1); % default size of colormap
if strcmp(opt_interp,'hsv')
    hsv = rgb2hsv(cm);
    hsv = interp1(1:p, hsv, linspace(1,p,n), 'linear');
    cm = hsv2rgb(hsv);
else
    cm = interp1(1:p, cm, linspace(1,p,n), 'linear');
end


end