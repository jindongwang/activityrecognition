function [xdata,ydata] = jdfigure2data(figurename)
%%%derive the xdata and ydata from a figure(2x dimension)

%%Input:
%%%%----figurename       :      name of the figure      [required]

%%Output:
%%%%----xdata            :      data on x axis
%%%%----ydata            :      data on y axis
%%=====================================================================
    open(figurename);
    h_line = get(gca,'Children');
    xdata = get(h_line,'Xdata');
    ydata = get(h_line,'Ydata');
end