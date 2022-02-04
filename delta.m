
function cm = delta(n, opt_interp)
% Colormap: delta

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
	0.065977000	0.123860000	0.249481000
	0.071333000	0.129406000	0.261688000
	0.076607000	0.134890000	0.274017000
	0.081799000	0.140316000	0.286479000
	0.086913000	0.145684000	0.299080000
	0.091946000	0.150996000	0.311829000
	0.096898000	0.156255000	0.324735000
	0.101765000	0.161462000	0.337805000
	0.106544000	0.166620000	0.351046000
	0.111227000	0.171730000	0.364464000
	0.115808000	0.176796000	0.378063000
	0.120276000	0.181821000	0.391844000
	0.124618000	0.186812000	0.405810000
	0.128818000	0.191774000	0.419953000
	0.132847000	0.196710000	0.434303000
	0.136674000	0.201628000	0.448866000
	0.140270000	0.206549000	0.463589000
	0.143561000	0.211476000	0.478537000
	0.146483000	0.216443000	0.493650000
	0.148927000	0.221483000	0.508898000
	0.150737000	0.226651000	0.524219000
	0.151690000	0.232033000	0.539476000
	0.151451000	0.237766000	0.554418000
	0.149639000	0.244060000	0.568488000
	0.146048000	0.251147000	0.580790000
	0.141088000	0.259081000	0.590483000
	0.135617000	0.267632000	0.597530000
	0.130315000	0.276483000	0.602554000
	0.125444000	0.285425000	0.606220000
	0.121087000	0.294347000	0.608997000
	0.117270000	0.303194000	0.611193000
	0.113975000	0.311944000	0.612998000
	0.111203000	0.320587000	0.614546000
	0.108932000	0.329125000	0.615918000
	0.107156000	0.337559000	0.617177000
	0.105867000	0.345895000	0.618369000
	0.105054000	0.354139000	0.619525000
	0.104701000	0.362299000	0.620668000
	0.104792000	0.370380000	0.621816000
	0.105308000	0.378390000	0.622980000
	0.106228000	0.386335000	0.624170000
	0.107530000	0.394220000	0.625394000
	0.109192000	0.402052000	0.626656000
	0.111194000	0.409834000	0.627964000
	0.113507000	0.417574000	0.629316000
	0.116108000	0.425274000	0.630714000
	0.118976000	0.432939000	0.632159000
	0.122091000	0.440572000	0.633654000
	0.125431000	0.448178000	0.635194000
	0.128981000	0.455760000	0.636781000
	0.132723000	0.463320000	0.638413000
	0.136646000	0.470862000	0.640088000
	0.140736000	0.478387000	0.641804000
	0.144987000	0.485899000	0.643559000
	0.149388000	0.493399000	0.645349000
	0.153937000	0.500889000	0.647171000
	0.158631000	0.508370000	0.649024000
	0.163470000	0.515844000	0.650904000
	0.168453000	0.523311000	0.652805000
	0.173586000	0.530772000	0.654725000
	0.178876000	0.538228000	0.656659000
	0.184332000	0.545678000	0.658603000
	0.189963000	0.553122000	0.660553000
	0.195786000	0.560559000	0.662503000
	0.201815000	0.567987000	0.664448000
	0.208070000	0.575406000	0.666383000
	0.214575000	0.582812000	0.668302000
	0.221355000	0.590203000	0.670200000
	0.228440000	0.597574000	0.672070000
	0.235863000	0.604921000	0.673909000
	0.243661000	0.612238000	0.675712000
	0.251874000	0.619517000	0.677475000
	0.260546000	0.626752000	0.679188000
	0.269722000	0.633932000	0.680860000
	0.279451000	0.641047000	0.682483000
	0.289776000	0.648083000	0.684068000
	0.300740000	0.655029000	0.685619000
	0.312373000	0.661871000	0.687155000
	0.324693000	0.668595000	0.688696000
	0.337694000	0.675190000	0.690272000
	0.351343000	0.681650000	0.691919000
	0.365580000	0.687970000	0.693677000
	0.380318000	0.694155000	0.695586000
	0.395452000	0.700214000	0.697685000
	0.410870000	0.706159000	0.700000000
	0.426466000	0.712008000	0.702552000
	0.442140000	0.717779000	0.705351000
	0.457815000	0.723491000	0.708396000
	0.473433000	0.729159000	0.711681000
	0.488944000	0.734801000	0.715198000
	0.504324000	0.740427000	0.718931000
	0.519545000	0.746050000	0.722868000
	0.534606000	0.751679000	0.726992000
	0.549496000	0.757322000	0.731290000
	0.564211000	0.762986000	0.735751000
	0.578759000	0.768678000	0.740359000
	0.593143000	0.774402000	0.745104000
	0.607367000	0.780162000	0.749975000
	0.621438000	0.785963000	0.754962000
	0.635361000	0.791808000	0.760056000
	0.649144000	0.797700000	0.765250000
	0.662792000	0.803643000	0.770534000
	0.676312000	0.809639000	0.775901000
	0.689709000	0.815690000	0.781345000
	0.702987000	0.821801000	0.786859000
	0.716151000	0.827974000	0.792435000
	0.729207000	0.834210000	0.798067000
	0.742160000	0.840512000	0.803746000
	0.755013000	0.846883000	0.809465000
	0.767768000	0.853326000	0.815215000
	0.780429000	0.859844000	0.820986000
	0.793000000	0.866439000	0.826765000
	0.805486000	0.873114000	0.832538000
	0.817891000	0.879872000	0.838289000
	0.830221000	0.886715000	0.843998000
	0.842485000	0.893644000	0.849640000
	0.854695000	0.900660000	0.855186000
	0.866869000	0.907763000	0.860602000
	0.879029000	0.914950000	0.865852000
	0.891204000	0.922214000	0.870896000
	0.903430000	0.929548000	0.875695000
	0.915745000	0.936942000	0.880217000
	0.928186000	0.944385000	0.884441000
	0.940786000	0.951864000	0.888355000
	0.953563000	0.959374000	0.891962000
	0.966520000	0.966911000	0.895275000
	0.979645000	0.974479000	0.898312000
	0.992911000	0.982087000	0.901087000
	0.998273000	0.988969000	0.799944000
	0.992906000	0.979405000	0.783336000
	0.987592000	0.969890000	0.766701000
	0.982319000	0.960428000	0.750040000
	0.977070000	0.951023000	0.733353000
	0.971836000	0.941678000	0.716637000
	0.966605000	0.932397000	0.699890000
	0.961364000	0.923182000	0.683111000
	0.956103000	0.914039000	0.666297000
	0.950808000	0.904969000	0.649450000
	0.945468000	0.895978000	0.632568000
	0.940072000	0.887068000	0.615647000
	0.934606000	0.878245000	0.598691000
	0.929055000	0.869512000	0.581702000
	0.923407000	0.860876000	0.564680000
	0.917648000	0.852340000	0.547623000
	0.911761000	0.843911000	0.530539000
	0.905729000	0.835594000	0.513433000
	0.899537000	0.827395000	0.496312000
	0.893167000	0.819322000	0.479184000
	0.886599000	0.811381000	0.462057000
	0.879816000	0.803578000	0.444945000
	0.872799000	0.795921000	0.427862000
	0.865527000	0.788416000	0.410828000
	0.857982000	0.781069000	0.393863000
	0.850148000	0.773886000	0.376992000
	0.842008000	0.766871000	0.360242000
	0.833549000	0.760028000	0.343642000
	0.824761000	0.753358000	0.327222000
	0.815638000	0.746860000	0.311012000
	0.806175000	0.740534000	0.295042000
	0.796375000	0.734374000	0.279343000
	0.786245000	0.728374000	0.263940000
	0.775792000	0.722528000	0.248856000
	0.765030000	0.716825000	0.234108000
	0.753975000	0.711257000	0.219712000
	0.742643000	0.705811000	0.205676000
	0.731053000	0.700478000	0.192006000
	0.719225000	0.695246000	0.178704000
	0.707175000	0.690104000	0.165768000
	0.694922000	0.685041000	0.153196000
	0.682484000	0.680049000	0.140985000
	0.669877000	0.675117000	0.129133000
	0.657114000	0.670237000	0.117638000
	0.644209000	0.665402000	0.106503000
	0.631174000	0.660603000	0.095735000
	0.618020000	0.655834000	0.085349000
	0.604756000	0.651089000	0.075370000
	0.591390000	0.646361000	0.065837000
	0.577930000	0.641646000	0.056809000
	0.564382000	0.636939000	0.048370000
	0.550751000	0.632234000	0.040631000
	0.537044000	0.627527000	0.033998000
	0.523263000	0.622813000	0.028892000
	0.509415000	0.618090000	0.025234000
	0.495502000	0.613352000	0.022927000
	0.481528000	0.608596000	0.021885000
	0.467496000	0.603817000	0.022026000
	0.453410000	0.599012000	0.023279000
	0.439275000	0.594178000	0.025579000
	0.425095000	0.589309000	0.028866000
	0.410873000	0.584402000	0.033084000
	0.396616000	0.579453000	0.038182000
	0.382329000	0.574459000	0.043948000
	0.368019000	0.569414000	0.049968000
	0.353695000	0.564316000	0.056129000
	0.339366000	0.559159000	0.062358000
	0.325042000	0.553940000	0.068599000
	0.310735000	0.548655000	0.074812000
	0.296459000	0.543300000	0.080966000
	0.282229000	0.537871000	0.087034000
	0.268063000	0.532365000	0.092994000
	0.253979000	0.526779000	0.098829000
	0.239998000	0.521110000	0.104523000
	0.226142000	0.515355000	0.110063000
	0.212435000	0.509514000	0.115433000
	0.198905000	0.503584000	0.120624000
	0.185580000	0.497565000	0.125622000
	0.172491000	0.491457000	0.130417000
	0.159672000	0.485261000	0.135001000
	0.147160000	0.478976000	0.139364000
	0.134998000	0.472605000	0.143498000
	0.123234000	0.466150000	0.147396000
	0.111922000	0.459613000	0.151053000
	0.101127000	0.452997000	0.154465000
	0.090924000	0.446304000	0.157626000
	0.081402000	0.439540000	0.160533000
	0.072664000	0.432705000	0.163185000
	0.064826000	0.425806000	0.165581000
	0.058014000	0.418844000	0.167719000
	0.052350000	0.411823000	0.169600000
	0.047940000	0.404749000	0.171224000
	0.044846000	0.397622000	0.172590000
	0.043075000	0.390449000	0.173701000
	0.042562000	0.383231000	0.174557000
	0.043180000	0.375972000	0.175159000
	0.044755000	0.368676000	0.175510000
	0.047096000	0.361345000	0.175611000
	0.050012000	0.353983000	0.175463000
	0.053334000	0.346593000	0.175068000
	0.056913000	0.339177000	0.174427000
	0.060631000	0.331738000	0.173543000
	0.064391000	0.324279000	0.172416000
	0.068118000	0.316803000	0.171048000
	0.071754000	0.309312000	0.169442000
	0.075251000	0.301809000	0.167597000
	0.078574000	0.294297000	0.165517000
	0.081698000	0.286777000	0.163203000
	0.084601000	0.279253000	0.160658000
	0.087268000	0.271726000	0.157885000
	0.089687000	0.264199000	0.154886000
	0.091848000	0.256675000	0.151666000
	0.093740000	0.249154000	0.148224000
	0.095361000	0.241640000	0.144568000
	0.096712000	0.234134000	0.140702000
	0.097792000	0.226635000	0.136630000
	0.098589000	0.219149000	0.132354000
	0.099119000	0.211672000	0.127882000
	0.099382000	0.204206000	0.123219000
	0.099372000	0.196752000	0.118367000
	0.099110000	0.189308000	0.113334000
	0.098584000	0.181875000	0.108121000
	0.097819000	0.174448000	0.102734000
	0.096804000	0.167029000	0.097174000
	0.095566000	0.159611000	0.091446000
	0.094095000	0.152194000	0.085550000
	0.092414000	0.144772000	0.079487000
	0.090533000	0.137339000	0.073258000
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
