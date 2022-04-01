
function cm = rdbu(n, opt_interp)
% Colormap: rdbu

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
	0.403922000	0.000000000	0.121569000
	0.698039000	0.094118000	0.168627000
	0.839216000	0.376471000	0.301961000
	0.956863000	0.647059000	0.509804000
	0.992157000	0.858824000	0.780392000
	0.968627000	0.968627000	0.968627000
	0.819608000	0.898039000	0.941176000
	0.572549000	0.772549000	0.870588000
	0.262745000	0.576471000	0.764706000
	0.129412000	0.400000000	0.674510000
	0.019608000	0.188235000	0.380392000
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
