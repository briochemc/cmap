
function cm = fmviz(n, opt_interp)
% Colormap: fmviz

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
	0.244798	0.055244	0.172696
    0.269465	0.063166	0.174900
    0.294137	0.071308	0.177014
    0.318861	0.079649	0.179035
    0.343669	0.088171	0.180960
    0.368587	0.096859	0.182784
    0.393630	0.105702	0.184506
    0.418811	0.114690	0.186122
    0.444140	0.123812	0.187629
    0.469621	0.133062	0.189023
    0.495261	0.142432	0.190301
    0.521061	0.151918	0.191458
    0.547023	0.161512	0.192493
    0.573149	0.171212	0.193400
    0.599438	0.181012	0.194176
    0.625891	0.190908	0.194816
    0.652507	0.200898	0.195316
    0.679285	0.210979	0.195672
    0.706224	0.221146	0.195877
    0.733323	0.231398	0.195927
    0.760580	0.241733	0.195816
    0.787993	0.252147	0.195538
    0.815561	0.262640	0.195086
    0.843283	0.273208	0.194452
    0.871156	0.283850	0.193629
    0.899179	0.294565	0.192608
    0.927351	0.305350	0.191380
    0.955668	0.316204	0.189933
    0.984131	0.327126	0.188257
    0.987374	0.366806	0.183832
    0.990321	0.403708	0.178867
    0.992966	0.438582	0.173302
    0.995302	0.471912	0.167065
    0.997322	0.504034	0.160061
    0.999020	0.535190	0.152170
    1.000000	0.565558	0.143234
    1.000000	0.595278	0.133034
    1.000000	0.624456	0.121254
    1.000000	0.653179	0.107405
    1.000000	0.681516	0.090660
    1.000000	0.709525	0.069380
    1.000000	0.737254	0.039226
    1.000000	0.764742	0.000115
    0.988294	0.794198	0.183677
    0.974202	0.823490	0.280458
    0.957445	0.852656	0.362121
    0.937649	0.881727	0.437614
    0.914360	0.910730	0.510064
    0.887018	0.939691	0.580924
    0.854902	0.968627	0.650980
];

%-- Modify the colormap by interpolation ---------------------------------%
%   Note: Interpolation can be done in hsv or rgb space depending on opt_interp.
p = size(cm,1); % default size of colormap
if strcmp(opt_interp, 'hsv')
    hsv = rgb2hsv(cm);
    hsv = interp1(1:p, hsv, linspace(1,p,n), 'linear');
    cm = hsv2rgb(hsv);
elseif strcmp(opt_interp, 'lab')
    lab = rgb2lab(cm);
    lab = interp1(1:p, lab, linspace(1,p,n), 'linear');
    cm = lab2rgb(lab);
elseif strcmp(opt_interp, 'none') % do nothing
else
    cm = interp1(1:p, cm, linspace(1,p,n), 'linear');
end

end