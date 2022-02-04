
function cm = haline(n, opt_interp)
% Colormap: haline

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
	0.162953000	0.095216000	0.422573000
	0.164810000	0.096351000	0.431846000
	0.166616000	0.097450000	0.441206000
	0.168366000	0.098515000	0.450651000
	0.170055000	0.099553000	0.460175000
	0.171675000	0.100569000	0.469772000
	0.173220000	0.101571000	0.479434000
	0.174680000	0.102571000	0.489151000
	0.176043000	0.103566000	0.498942000
	0.177298000	0.104580000	0.508772000
	0.178432000	0.105638000	0.518611000
	0.179423000	0.106742000	0.528484000
	0.180254000	0.107936000	0.538325000
	0.180898000	0.109239000	0.548135000
	0.181330000	0.110704000	0.557844000
	0.181507000	0.112361000	0.567447000
	0.181396000	0.114280000	0.576851000
	0.180950000	0.116525000	0.585982000
	0.180117000	0.119168000	0.594749000
	0.178842000	0.122289000	0.603037000
	0.177075000	0.125962000	0.610708000
	0.174776000	0.130249000	0.617617000
	0.171926000	0.135177000	0.623629000
	0.168530000	0.140731000	0.628636000
	0.164637000	0.146843000	0.632580000
	0.160314000	0.153407000	0.635470000
	0.155654000	0.160291000	0.637374000
	0.150737000	0.167369000	0.638399000
	0.145643000	0.174529000	0.638669000
	0.140437000	0.181684000	0.638309000
	0.135173000	0.188769000	0.637435000
	0.129891000	0.195740000	0.636147000
	0.124621000	0.202570000	0.634528000
	0.119386000	0.209245000	0.632648000
	0.114229000	0.215746000	0.630577000
	0.109140000	0.222083000	0.628346000
	0.104144000	0.228255000	0.625998000
	0.099263000	0.234261000	0.623572000
	0.094495000	0.240114000	0.621082000
	0.089870000	0.245815000	0.618559000
	0.085393000	0.251373000	0.616017000
	0.081068000	0.256800000	0.613460000
	0.076944000	0.262092000	0.610924000
	0.073007000	0.267266000	0.608397000
	0.069277000	0.272327000	0.605887000
	0.065788000	0.277279000	0.603414000
	0.062556000	0.282128000	0.600979000
	0.059592000	0.286883000	0.598580000
	0.056918000	0.291549000	0.596221000
	0.054553000	0.296130000	0.593908000
	0.052519000	0.300632000	0.591641000
	0.050839000	0.305056000	0.589432000
	0.049515000	0.309410000	0.587271000
	0.048555000	0.313698000	0.585163000
	0.047964000	0.317923000	0.583106000
	0.047739000	0.322088000	0.581103000
	0.047875000	0.326198000	0.579153000
	0.048360000	0.330255000	0.577256000
	0.049176000	0.334263000	0.575413000
	0.050305000	0.338223000	0.573623000
	0.051724000	0.342140000	0.571887000
	0.053408000	0.346014000	0.570203000
	0.055332000	0.349850000	0.568572000
	0.057472000	0.353648000	0.566992000
	0.059804000	0.357411000	0.565463000
	0.062303000	0.361142000	0.563984000
	0.064949000	0.364841000	0.562556000
	0.067722000	0.368512000	0.561175000
	0.070604000	0.372155000	0.559843000
	0.073578000	0.375771000	0.558561000
	0.076631000	0.379363000	0.557327000
	0.079747000	0.382932000	0.556138000
	0.082916000	0.386480000	0.554994000
	0.086126000	0.390008000	0.553893000
	0.089368000	0.393517000	0.552836000
	0.092635000	0.397009000	0.551820000
	0.095918000	0.400485000	0.550846000
	0.099213000	0.403945000	0.549913000
	0.102514000	0.407390000	0.549023000
	0.105814000	0.410823000	0.548170000
	0.109110000	0.414244000	0.547355000
	0.112398000	0.417653000	0.546576000
	0.115673000	0.421053000	0.545832000
	0.118934000	0.424443000	0.545123000
	0.122178000	0.427825000	0.544451000
	0.125402000	0.431199000	0.543811000
	0.128603000	0.434566000	0.543202000
	0.131780000	0.437928000	0.542623000
	0.134931000	0.441284000	0.542073000
	0.138055000	0.444636000	0.541555000
	0.141150000	0.447983000	0.541064000
	0.144215000	0.451328000	0.540598000
	0.147249000	0.454671000	0.540156000
	0.150250000	0.458012000	0.539738000
	0.153219000	0.461351000	0.539346000
	0.156155000	0.464689000	0.538974000
	0.159055000	0.468028000	0.538622000
	0.161921000	0.471367000	0.538288000
	0.164752000	0.474708000	0.537973000
	0.167548000	0.478049000	0.537676000
	0.170308000	0.481393000	0.537392000
	0.173032000	0.484740000	0.537122000
	0.175719000	0.488089000	0.536864000
	0.178372000	0.491441000	0.536618000
	0.180988000	0.494798000	0.536382000
	0.183568000	0.498158000	0.536153000
	0.186113000	0.501523000	0.535929000
	0.188623000	0.504893000	0.535713000
	0.191099000	0.508268000	0.535500000
	0.193540000	0.511648000	0.535289000
	0.195947000	0.515034000	0.535077000
	0.198323000	0.518426000	0.534867000
	0.200666000	0.521824000	0.534653000
	0.202978000	0.525229000	0.534435000
	0.205260000	0.528640000	0.534210000
	0.207513000	0.532058000	0.533980000
	0.209739000	0.535482000	0.533741000
	0.211938000	0.538914000	0.533491000
	0.214111000	0.542353000	0.533228000
	0.216262000	0.545798000	0.532954000
	0.218390000	0.549251000	0.532663000
	0.220497000	0.552712000	0.532356000
	0.222586000	0.556179000	0.532031000
	0.224657000	0.559654000	0.531687000
	0.226714000	0.563135000	0.531321000
	0.228758000	0.566624000	0.530933000
	0.230791000	0.570120000	0.530520000
	0.232815000	0.573622000	0.530082000
	0.234833000	0.577132000	0.529617000
	0.236847000	0.580647000	0.529123000
	0.238859000	0.584170000	0.528600000
	0.240872000	0.587698000	0.528044000
	0.242888000	0.591233000	0.527457000
	0.244911000	0.594774000	0.526836000
	0.246942000	0.598320000	0.526179000
	0.248985000	0.601871000	0.525485000
	0.251042000	0.605428000	0.524755000
	0.253116000	0.608989000	0.523985000
	0.255211000	0.612555000	0.523176000
	0.257329000	0.616125000	0.522324000
	0.259472000	0.619699000	0.521430000
	0.261646000	0.623276000	0.520494000
	0.263851000	0.626857000	0.519514000
	0.266091000	0.630441000	0.518486000
	0.268370000	0.634026000	0.517413000
	0.270690000	0.637614000	0.516294000
	0.273055000	0.641204000	0.515126000
	0.275468000	0.644794000	0.513907000
	0.277931000	0.648386000	0.512639000
	0.280448000	0.651978000	0.511321000
	0.283023000	0.655569000	0.509954000
	0.285657000	0.659161000	0.508530000
	0.288354000	0.662751000	0.507054000
	0.291118000	0.666339000	0.505525000
	0.293951000	0.669926000	0.503944000
	0.296856000	0.673510000	0.502306000
	0.299836000	0.677091000	0.500611000
	0.302894000	0.680668000	0.498861000
	0.306034000	0.684241000	0.497056000
	0.309257000	0.687809000	0.495195000
	0.312566000	0.691372000	0.493273000
	0.315965000	0.694930000	0.491293000
	0.319456000	0.698480000	0.489255000
	0.323041000	0.702023000	0.487161000
	0.326724000	0.705559000	0.485009000
	0.330507000	0.709086000	0.482796000
	0.334393000	0.712604000	0.480520000
	0.338384000	0.716112000	0.478186000
	0.342482000	0.719609000	0.475795000
	0.346691000	0.723094000	0.473344000
	0.351012000	0.726568000	0.470836000
	0.355448000	0.730028000	0.468267000
	0.360002000	0.733474000	0.465634000
	0.364676000	0.736906000	0.462944000
	0.369473000	0.740322000	0.460197000
	0.374394000	0.743721000	0.457392000
	0.379441000	0.747102000	0.454531000
	0.384618000	0.750464000	0.451615000
	0.389927000	0.753806000	0.448644000
	0.395370000	0.757128000	0.445619000
	0.400951000	0.760427000	0.442538000
	0.406671000	0.763702000	0.439406000
	0.412533000	0.766953000	0.436225000
	0.418540000	0.770177000	0.432998000
	0.424692000	0.773373000	0.429728000
	0.430994000	0.776540000	0.426418000
	0.437447000	0.779676000	0.423072000
	0.444053000	0.782780000	0.419693000
	0.450816000	0.785849000	0.416287000
	0.457738000	0.788883000	0.412859000
	0.464820000	0.791878000	0.409417000
	0.472064000	0.794834000	0.405966000
	0.479473000	0.797748000	0.402518000
	0.487047000	0.800618000	0.399080000
	0.494788000	0.803442000	0.395665000
	0.502695000	0.806218000	0.392285000
	0.510772000	0.808944000	0.388951000
	0.519018000	0.811618000	0.385680000
	0.527427000	0.814238000	0.382493000
	0.535997000	0.816803000	0.379411000
	0.544724000	0.819312000	0.376454000
	0.553602000	0.821763000	0.373647000
	0.562622000	0.824156000	0.371015000
	0.571780000	0.826489000	0.368583000
	0.581062000	0.828765000	0.366380000
	0.590452000	0.830984000	0.364436000
	0.599936000	0.833147000	0.362780000
	0.609498000	0.835259000	0.361438000
	0.619118000	0.837321000	0.360435000
	0.628775000	0.839338000	0.359796000
	0.638452000	0.841315000	0.359536000
	0.648128000	0.843256000	0.359671000
	0.657785000	0.845166000	0.360209000
	0.667405000	0.847051000	0.361154000
	0.676962000	0.848920000	0.362510000
	0.686449000	0.850775000	0.364267000
	0.695854000	0.852621000	0.366415000
	0.705169000	0.854464000	0.368944000
	0.714383000	0.856307000	0.371836000
	0.723492000	0.858154000	0.375074000
	0.732491000	0.860008000	0.378641000
	0.741377000	0.861874000	0.382516000
	0.750151000	0.863752000	0.386680000
	0.758813000	0.865644000	0.391113000
	0.767364000	0.867553000	0.395797000
	0.775808000	0.869479000	0.400715000
	0.784148000	0.871423000	0.405851000
	0.792378000	0.873389000	0.411182000
	0.800498000	0.875378000	0.416694000
	0.808524000	0.877387000	0.422376000
	0.816463000	0.879415000	0.428219000
	0.824319000	0.881462000	0.434211000
	0.832086000	0.883531000	0.440336000
	0.839754000	0.885628000	0.446572000
	0.847354000	0.887742000	0.452931000
	0.854891000	0.889873000	0.459405000
	0.862341000	0.892031000	0.465965000
	0.869719000	0.894211000	0.472613000
	0.877048000	0.896406000	0.479360000
	0.884306000	0.898624000	0.486177000
	0.891497000	0.900867000	0.493059000
	0.898651000	0.903121000	0.500030000
	0.905733000	0.905403000	0.507044000
	0.912768000	0.907703000	0.514123000
	0.919772000	0.910015000	0.521277000
	0.926700000	0.912359000	0.528448000
	0.933609000	0.914711000	0.535699000
	0.940461000	0.917089000	0.542975000
	0.947280000	0.919483000	0.550304000
	0.954066000	0.921892000	0.557680000
	0.960805000	0.924325000	0.565079000
	0.967529000	0.926767000	0.572541000
	0.974197000	0.929238000	0.580004000
	0.980863000	0.931712000	0.587543000
	0.987468000	0.934220000	0.595065000
	0.994081000	0.936728000	0.602670000
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
