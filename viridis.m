
function cm = viridis(n, opt_interp)
% Colormap: viridis

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
	0.267004000	0.004874000	0.329415000
	0.268510000	0.009605000	0.335427000
	0.269944000	0.014625000	0.341379000
	0.271305000	0.019942000	0.347269000
	0.272594000	0.025563000	0.353093000
	0.273809000	0.031497000	0.358853000
	0.274952000	0.037752000	0.364543000
	0.276022000	0.044167000	0.370164000
	0.277018000	0.050344000	0.375715000
	0.277941000	0.056324000	0.381191000
	0.278791000	0.062145000	0.386592000
	0.279566000	0.067836000	0.391917000
	0.280267000	0.073417000	0.397163000
	0.280894000	0.078907000	0.402329000
	0.281446000	0.084320000	0.407414000
	0.281924000	0.089666000	0.412415000
	0.282327000	0.094955000	0.417331000
	0.282656000	0.100196000	0.422160000
	0.282910000	0.105393000	0.426902000
	0.283091000	0.110553000	0.431554000
	0.283197000	0.115680000	0.436115000
	0.283229000	0.120777000	0.440584000
	0.283187000	0.125848000	0.444960000
	0.283072000	0.130895000	0.449241000
	0.282884000	0.135920000	0.453427000
	0.282623000	0.140926000	0.457517000
	0.282290000	0.145912000	0.461510000
	0.281887000	0.150881000	0.465405000
	0.281412000	0.155834000	0.469201000
	0.280868000	0.160771000	0.472899000
	0.280255000	0.165693000	0.476498000
	0.279574000	0.170599000	0.479997000
	0.278826000	0.175490000	0.483397000
	0.278012000	0.180367000	0.486697000
	0.277134000	0.185228000	0.489898000
	0.276194000	0.190074000	0.493001000
	0.275191000	0.194905000	0.496005000
	0.274128000	0.199721000	0.498911000
	0.273006000	0.204520000	0.501721000
	0.271828000	0.209303000	0.504434000
	0.270595000	0.214069000	0.507052000
	0.269308000	0.218818000	0.509577000
	0.267968000	0.223549000	0.512008000
	0.266580000	0.228262000	0.514349000
	0.265145000	0.232956000	0.516599000
	0.263663000	0.237631000	0.518762000
	0.262138000	0.242286000	0.520837000
	0.260571000	0.246922000	0.522828000
	0.258965000	0.251537000	0.524736000
	0.257322000	0.256130000	0.526563000
	0.255645000	0.260703000	0.528312000
	0.253935000	0.265254000	0.529983000
	0.252194000	0.269783000	0.531579000
	0.250425000	0.274290000	0.533103000
	0.248629000	0.278775000	0.534556000
	0.246811000	0.283237000	0.535941000
	0.244972000	0.287675000	0.537260000
	0.243113000	0.292092000	0.538516000
	0.241237000	0.296485000	0.539709000
	0.239346000	0.300855000	0.540844000
	0.237441000	0.305202000	0.541921000
	0.235526000	0.309527000	0.542944000
	0.233603000	0.313828000	0.543914000
	0.231674000	0.318106000	0.544834000
	0.229739000	0.322361000	0.545706000
	0.227802000	0.326594000	0.546532000
	0.225863000	0.330805000	0.547314000
	0.223925000	0.334994000	0.548053000
	0.221989000	0.339161000	0.548752000
	0.220057000	0.343307000	0.549413000
	0.218130000	0.347432000	0.550038000
	0.216210000	0.351535000	0.550627000
	0.214298000	0.355619000	0.551184000
	0.212395000	0.359683000	0.551710000
	0.210503000	0.363727000	0.552206000
	0.208623000	0.367752000	0.552675000
	0.206756000	0.371758000	0.553117000
	0.204903000	0.375746000	0.553533000
	0.203063000	0.379716000	0.553925000
	0.201239000	0.383670000	0.554294000
	0.199430000	0.387607000	0.554642000
	0.197637000	0.391528000	0.554969000
	0.195860000	0.395433000	0.555276000
	0.194100000	0.399323000	0.555565000
	0.192357000	0.403199000	0.555836000
	0.190631000	0.407061000	0.556089000
	0.188923000	0.410910000	0.556326000
	0.187231000	0.414746000	0.556547000
	0.185556000	0.418570000	0.556753000
	0.183898000	0.422383000	0.556944000
	0.182256000	0.426184000	0.557120000
	0.180629000	0.429975000	0.557282000
	0.179019000	0.433756000	0.557430000
	0.177423000	0.437527000	0.557565000
	0.175841000	0.441290000	0.557685000
	0.174274000	0.445044000	0.557792000
	0.172719000	0.448791000	0.557885000
	0.171176000	0.452530000	0.557965000
	0.169646000	0.456262000	0.558030000
	0.168126000	0.459988000	0.558082000
	0.166617000	0.463708000	0.558119000
	0.165117000	0.467423000	0.558141000
	0.163625000	0.471133000	0.558148000
	0.162142000	0.474838000	0.558140000
	0.160665000	0.478540000	0.558115000
	0.159194000	0.482237000	0.558073000
	0.157729000	0.485932000	0.558013000
	0.156270000	0.489624000	0.557936000
	0.154815000	0.493313000	0.557840000
	0.153364000	0.497000000	0.557724000
	0.151918000	0.500685000	0.557587000
	0.150476000	0.504369000	0.557430000
	0.149039000	0.508051000	0.557251000
	0.147607000	0.511733000	0.557049000
	0.146180000	0.515413000	0.556823000
	0.144759000	0.519093000	0.556572000
	0.143343000	0.522773000	0.556295000
	0.141935000	0.526453000	0.555991000
	0.140536000	0.530132000	0.555659000
	0.139147000	0.533812000	0.555298000
	0.137770000	0.537492000	0.554906000
	0.136409000	0.541173000	0.554483000
	0.135066000	0.544853000	0.554029000
	0.133743000	0.548535000	0.553541000
	0.132444000	0.552216000	0.553018000
	0.131172000	0.555899000	0.552459000
	0.129933000	0.559582000	0.551864000
	0.128729000	0.563265000	0.551229000
	0.127568000	0.566949000	0.550556000
	0.126453000	0.570633000	0.549841000
	0.125394000	0.574318000	0.549086000
	0.124395000	0.578002000	0.548287000
	0.123463000	0.581687000	0.547445000
	0.122606000	0.585371000	0.546557000
	0.121831000	0.589055000	0.545623000
	0.121148000	0.592739000	0.544641000
	0.120565000	0.596422000	0.543611000
	0.120092000	0.600104000	0.542530000
	0.119738000	0.603785000	0.541400000
	0.119512000	0.607464000	0.540218000
	0.119423000	0.611141000	0.538982000
	0.119483000	0.614817000	0.537692000
	0.119699000	0.618490000	0.536347000
	0.120081000	0.622161000	0.534946000
	0.120638000	0.625828000	0.533488000
	0.121380000	0.629492000	0.531973000
	0.122312000	0.633153000	0.530398000
	0.123444000	0.636809000	0.528763000
	0.124780000	0.640461000	0.527068000
	0.126326000	0.644107000	0.525311000
	0.128087000	0.647749000	0.523491000
	0.130067000	0.651384000	0.521608000
	0.132268000	0.655014000	0.519661000
	0.134692000	0.658636000	0.517649000
	0.137339000	0.662252000	0.515571000
	0.140210000	0.665859000	0.513427000
	0.143303000	0.669459000	0.511215000
	0.146616000	0.673050000	0.508936000
	0.150148000	0.676631000	0.506589000
	0.153894000	0.680203000	0.504172000
	0.157851000	0.683765000	0.501686000
	0.162016000	0.687316000	0.499129000
	0.166383000	0.690856000	0.496502000
	0.170948000	0.694384000	0.493803000
	0.175707000	0.697900000	0.491033000
	0.180653000	0.701402000	0.488189000
	0.185783000	0.704891000	0.485273000
	0.191090000	0.708366000	0.482284000
	0.196571000	0.711827000	0.479221000
	0.202219000	0.715272000	0.476084000
	0.208030000	0.718701000	0.472873000
	0.214000000	0.722114000	0.469588000
	0.220124000	0.725509000	0.466226000
	0.226397000	0.728888000	0.462789000
	0.232815000	0.732247000	0.459277000
	0.239374000	0.735588000	0.455688000
	0.246070000	0.738910000	0.452024000
	0.252899000	0.742211000	0.448284000
	0.259857000	0.745492000	0.444467000
	0.266941000	0.748751000	0.440573000
	0.274149000	0.751988000	0.436601000
	0.281477000	0.755203000	0.432552000
	0.288921000	0.758394000	0.428426000
	0.296479000	0.761561000	0.424223000
	0.304148000	0.764704000	0.419943000
	0.311925000	0.767822000	0.415586000
	0.319809000	0.770914000	0.411152000
	0.327796000	0.773980000	0.406640000
	0.335885000	0.777018000	0.402049000
	0.344074000	0.780029000	0.397381000
	0.352360000	0.783011000	0.392636000
	0.360741000	0.785964000	0.387814000
	0.369214000	0.788888000	0.382914000
	0.377779000	0.791781000	0.377939000
	0.386433000	0.794644000	0.372886000
	0.395174000	0.797475000	0.367757000
	0.404001000	0.800275000	0.362552000
	0.412914000	0.803041000	0.357269000
	0.421908000	0.805774000	0.351910000
	0.430983000	0.808473000	0.346476000
	0.440137000	0.811138000	0.340967000
	0.449368000	0.813768000	0.335384000
	0.458674000	0.816363000	0.329727000
	0.468053000	0.818921000	0.323998000
	0.477504000	0.821444000	0.318195000
	0.487026000	0.823929000	0.312321000
	0.496615000	0.826376000	0.306377000
	0.506271000	0.828786000	0.300362000
	0.515992000	0.831158000	0.294279000
	0.525776000	0.833491000	0.288127000
	0.535621000	0.835785000	0.281908000
	0.545524000	0.838039000	0.275626000
	0.555484000	0.840254000	0.269281000
	0.565498000	0.842430000	0.262877000
	0.575563000	0.844566000	0.256415000
	0.585678000	0.846661000	0.249897000
	0.595839000	0.848717000	0.243329000
	0.606045000	0.850733000	0.236712000
	0.616293000	0.852709000	0.230052000
	0.626579000	0.854645000	0.223353000
	0.636902000	0.856542000	0.216620000
	0.647257000	0.858400000	0.209861000
	0.657642000	0.860219000	0.203082000
	0.668054000	0.861999000	0.196293000
	0.678489000	0.863742000	0.189503000
	0.688944000	0.865448000	0.182725000
	0.699415000	0.867117000	0.175971000
	0.709898000	0.868751000	0.169257000
	0.720391000	0.870350000	0.162603000
	0.730889000	0.871916000	0.156029000
	0.741388000	0.873449000	0.149561000
	0.751884000	0.874951000	0.143228000
	0.762373000	0.876424000	0.137064000
	0.772852000	0.877868000	0.131109000
	0.783315000	0.879285000	0.125405000
	0.793760000	0.880678000	0.120005000
	0.804182000	0.882046000	0.114965000
	0.814576000	0.883393000	0.110347000
	0.824940000	0.884720000	0.106217000
	0.835270000	0.886029000	0.102646000
	0.845561000	0.887322000	0.099702000
	0.855810000	0.888601000	0.097452000
	0.866013000	0.889868000	0.095953000
	0.876168000	0.891125000	0.095250000
	0.886271000	0.892374000	0.095374000
	0.896320000	0.893616000	0.096335000
	0.906311000	0.894855000	0.098125000
	0.916242000	0.896091000	0.100717000
	0.926106000	0.897330000	0.104071000
	0.935904000	0.898570000	0.108131000
	0.945636000	0.899815000	0.112838000
	0.955300000	0.901065000	0.118128000
	0.964894000	0.902323000	0.123941000
	0.974417000	0.903590000	0.130215000
	0.983868000	0.904867000	0.136897000
	0.993248000	0.906157000	0.143936000
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
