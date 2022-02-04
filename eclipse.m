
function cm = eclipse(n, opt_interp)
% Colormap: eclipse

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
	0.000000000	0.000000000	0.000000000
	0.000208000	0.000211000	0.000265000
	0.000713000	0.000731000	0.000949000
	0.001462000	0.001514000	0.002030000
	0.002431000	0.002542000	0.003507000
	0.003600000	0.003801000	0.005384000
	0.004958000	0.005285000	0.007671000
	0.006490000	0.006987000	0.010378000
	0.008189000	0.008902000	0.013516000
	0.010043000	0.011028000	0.017097000
	0.012046000	0.013362000	0.021134000
	0.014187000	0.015903000	0.025640000
	0.016460000	0.018650000	0.030628000
	0.018856000	0.021601000	0.036113000
	0.021368000	0.024757000	0.042062000
	0.023987000	0.028117000	0.048063000
	0.026707000	0.031682000	0.054053000
	0.029519000	0.035452000	0.060036000
	0.032415000	0.039429000	0.066015000
	0.035387000	0.043493000	0.071994000
	0.038427000	0.047512000	0.077975000
	0.041499000	0.051500000	0.083961000
	0.044483000	0.055460000	0.089953000
	0.047384000	0.059395000	0.095954000
	0.050201000	0.063308000	0.101964000
	0.052934000	0.067200000	0.107984000
	0.055584000	0.071076000	0.114016000
	0.058149000	0.074935000	0.120061000
	0.060629000	0.078782000	0.126118000
	0.063021000	0.082617000	0.132188000
	0.065326000	0.086444000	0.138272000
	0.067540000	0.090262000	0.144370000
	0.069662000	0.094075000	0.150480000
	0.071689000	0.097884000	0.156603000
	0.073619000	0.101691000	0.162739000
	0.075449000	0.105498000	0.168885000
	0.077175000	0.109305000	0.175043000
	0.078795000	0.113115000	0.181209000
	0.080304000	0.116929000	0.187383000
	0.081697000	0.120750000	0.193563000
	0.082970000	0.124577000	0.199747000
	0.084119000	0.128414000	0.205932000
	0.085137000	0.132262000	0.212117000
	0.086019000	0.136121000	0.218297000
	0.086758000	0.139995000	0.224469000
	0.087347000	0.143884000	0.230631000
	0.087779000	0.147791000	0.236776000
	0.088045000	0.151716000	0.242901000
	0.088137000	0.155662000	0.249000000
	0.088045000	0.159629000	0.255067000
	0.087760000	0.163620000	0.261095000
	0.087271000	0.167637000	0.267075000
	0.086566000	0.171679000	0.273001000
	0.085633000	0.175750000	0.278862000
	0.084461000	0.179850000	0.284648000
	0.083035000	0.183981000	0.290348000
	0.081344000	0.188142000	0.295949000
	0.079373000	0.192336000	0.301436000
	0.077111000	0.196561000	0.306796000
	0.074548000	0.200818000	0.312013000
	0.071673000	0.205106000	0.317069000
	0.068481000	0.209423000	0.321947000
	0.064971000	0.213767000	0.326629000
	0.061149000	0.218134000	0.331097000
	0.057031000	0.222522000	0.335336000
	0.052641000	0.226924000	0.339329000
	0.048024000	0.231334000	0.343065000
	0.043242000	0.235746000	0.346534000
	0.038380000	0.240152000	0.349732000
	0.033798000	0.244545000	0.352657000
	0.029720000	0.248916000	0.355314000
	0.026254000	0.253259000	0.357713000
	0.023498000	0.257566000	0.359867000
	0.021536000	0.261833000	0.361791000
	0.020438000	0.266055000	0.363505000
	0.020258000	0.270228000	0.365029000
	0.021035000	0.274350000	0.366383000
	0.022795000	0.278419000	0.367589000
	0.025554000	0.282436000	0.368664000
	0.029318000	0.286400000	0.369628000
	0.034085000	0.290313000	0.370498000
	0.039850000	0.294175000	0.371288000
	0.046249000	0.297988000	0.372012000
	0.052931000	0.301754000	0.372683000
	0.059808000	0.305475000	0.373312000
	0.066813000	0.309153000	0.373907000
	0.073895000	0.312791000	0.374478000
	0.081015000	0.316390000	0.375031000
	0.088146000	0.319953000	0.375573000
	0.095269000	0.323481000	0.376109000
	0.102368000	0.326976000	0.376644000
	0.109434000	0.330441000	0.377183000
	0.116459000	0.333877000	0.377728000
	0.123437000	0.337287000	0.378282000
	0.130366000	0.340671000	0.378849000
	0.137243000	0.344031000	0.379431000
	0.144066000	0.347369000	0.380029000
	0.150835000	0.350687000	0.380645000
	0.157550000	0.353985000	0.381280000
	0.164211000	0.357266000	0.381936000
	0.170819000	0.360530000	0.382613000
	0.177374000	0.363778000	0.383313000
	0.183878000	0.367013000	0.384035000
	0.190332000	0.370234000	0.384780000
	0.196736000	0.373443000	0.385548000
	0.203093000	0.376641000	0.386340000
	0.209403000	0.379829000	0.387155000
	0.215667000	0.383008000	0.387994000
	0.221886000	0.386178000	0.388856000
	0.228063000	0.389341000	0.389741000
	0.234197000	0.392498000	0.390648000
	0.240291000	0.395648000	0.391578000
	0.246346000	0.398794000	0.392529000
	0.252362000	0.401935000	0.393501000
	0.258340000	0.405073000	0.394494000
	0.264283000	0.408208000	0.395506000
	0.270191000	0.411341000	0.396536000
	0.276065000	0.414471000	0.397584000
	0.281906000	0.417601000	0.398649000
	0.287716000	0.420731000	0.399729000
	0.293495000	0.423860000	0.400823000
	0.299245000	0.426990000	0.401930000
	0.304967000	0.430121000	0.403048000
	0.310662000	0.433253000	0.404175000
	0.316332000	0.436388000	0.405311000
	0.321978000	0.439524000	0.406453000
	0.327601000	0.442663000	0.407599000
	0.333203000	0.445806000	0.408748000
	0.338786000	0.448951000	0.409896000
	0.344350000	0.452100000	0.411043000
	0.349899000	0.455252000	0.412185000
	0.355433000	0.458408000	0.413321000
	0.360955000	0.461568000	0.414446000
	0.366467000	0.464731000	0.415560000
	0.371972000	0.467898000	0.416659000
	0.377472000	0.471068000	0.417741000
	0.382969000	0.474241000	0.418802000
	0.388466000	0.477417000	0.419841000
	0.393967000	0.480596000	0.420853000
	0.399473000	0.483776000	0.421838000
	0.404989000	0.486958000	0.422791000
	0.410518000	0.490140000	0.423710000
	0.416063000	0.493323000	0.424593000
	0.421626000	0.496504000	0.425437000
	0.427213000	0.499684000	0.426241000
	0.432826000	0.502861000	0.427003000
	0.438468000	0.506035000	0.427721000
	0.444142000	0.509204000	0.428393000
	0.449853000	0.512368000	0.429019000
	0.455602000	0.515526000	0.429598000
	0.461392000	0.518676000	0.430128000
	0.467226000	0.521817000	0.430611000
	0.473107000	0.524950000	0.431047000
	0.479035000	0.528072000	0.431434000
	0.485013000	0.531183000	0.431775000
	0.491042000	0.534282000	0.432070000
	0.497124000	0.537369000	0.432319000
	0.503258000	0.540443000	0.432525000
	0.509446000	0.543504000	0.432688000
	0.515688000	0.546550000	0.432809000
	0.521982000	0.549583000	0.432891000
	0.528330000	0.552601000	0.432933000
	0.534731000	0.555605000	0.432939000
	0.541184000	0.558594000	0.432909000
	0.547688000	0.561568000	0.432844000
	0.554242000	0.564528000	0.432746000
	0.560844000	0.567474000	0.432616000
	0.567495000	0.570405000	0.432454000
	0.574192000	0.573323000	0.432262000
	0.580934000	0.576227000	0.432040000
	0.587720000	0.579118000	0.431788000
	0.594549000	0.581996000	0.431507000
	0.601419000	0.584862000	0.431198000
	0.608328000	0.587715000	0.430858000
	0.615276000	0.590557000	0.430490000
	0.622261000	0.593389000	0.430092000
	0.629282000	0.596209000	0.429664000
	0.636338000	0.599020000	0.429204000
	0.643426000	0.601821000	0.428713000
	0.650547000	0.604614000	0.428188000
	0.657698000	0.607398000	0.427628000
	0.664879000	0.610175000	0.427032000
	0.672088000	0.612945000	0.426398000
	0.679324000	0.615709000	0.425723000
	0.686586000	0.618468000	0.425006000
	0.693872000	0.621222000	0.424244000
	0.701180000	0.623973000	0.423435000
	0.708510000	0.626721000	0.422573000
	0.715860000	0.629468000	0.421658000
	0.723226000	0.632214000	0.420684000
	0.730609000	0.634962000	0.419647000
	0.738004000	0.637713000	0.418544000
	0.745410000	0.640468000	0.417368000
	0.752823000	0.643229000	0.416115000
	0.760240000	0.646000000	0.414778000
	0.767656000	0.648781000	0.413352000
	0.775067000	0.651578000	0.411829000
	0.782467000	0.654393000	0.410201000
	0.789848000	0.657230000	0.408462000
	0.797203000	0.660095000	0.406602000
	0.804520000	0.662994000	0.404615000
	0.811788000	0.665933000	0.402492000
	0.818992000	0.668922000	0.400226000
	0.826114000	0.671971000	0.397813000
	0.833133000	0.675090000	0.395251000
	0.840025000	0.678293000	0.392542000
	0.846762000	0.681594000	0.389695000
	0.853314000	0.685010000	0.386726000
	0.859652000	0.688554000	0.383662000
	0.865746000	0.692242000	0.380538000
	0.871572000	0.696083000	0.377396000
	0.877114000	0.700086000	0.374283000
	0.882365000	0.704250000	0.371243000
	0.887329000	0.708574000	0.368317000
	0.892015000	0.713050000	0.365536000
	0.896442000	0.717667000	0.362920000
	0.900631000	0.722414000	0.360481000
	0.904604000	0.727280000	0.358222000
	0.908381000	0.732252000	0.356139000
	0.911985000	0.737320000	0.354229000
	0.915434000	0.742475000	0.352479000
	0.918744000	0.747708000	0.350879000
	0.921930000	0.753011000	0.349422000
	0.925004000	0.758380000	0.348092000
	0.927979000	0.763807000	0.346881000
	0.930862000	0.769289000	0.345777000
	0.933662000	0.774822000	0.344772000
	0.936388000	0.780401000	0.343859000
	0.939045000	0.786025000	0.343027000
	0.941638000	0.791690000	0.342271000
	0.944173000	0.797395000	0.341583000
	0.946652000	0.803137000	0.340954000
	0.949080000	0.808916000	0.340380000
	0.951461000	0.814728000	0.339859000
	0.953795000	0.820575000	0.339379000
	0.956088000	0.826453000	0.338942000
	0.958340000	0.832362000	0.338540000
	0.960552000	0.838303000	0.338168000
	0.962728000	0.844273000	0.337826000
	0.964869000	0.850273000	0.337508000
	0.966975000	0.856301000	0.337211000
	0.969048000	0.862358000	0.336932000
	0.971089000	0.868443000	0.336667000
	0.973098000	0.874556000	0.336414000
	0.975076000	0.880697000	0.336170000
	0.977025000	0.886865000	0.335933000
	0.978944000	0.893060000	0.335700000
	0.980834000	0.899282000	0.335468000
	0.982695000	0.905532000	0.335236000
	0.984528000	0.911808000	0.335002000
	0.986335000	0.918111000	0.334765000
	0.988112000	0.924442000	0.334519000
	0.989860000	0.930800000	0.334263000
	0.991584000	0.937184000	0.334000000
	0.993278000	0.943596000	0.333723000
	0.994943000	0.950036000	0.333428000
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
