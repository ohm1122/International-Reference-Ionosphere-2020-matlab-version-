% function main
% IRI2020.m INPUTS
%   latitude(deg), longitude(deg), time(datenum or datetime), altitude(km)
%
% OUTPUTS
%   structure with fields
%   latitude(deg), longitude(deg), time(datetime), altitude(km),
%   electron density (Ne/m^3) and various profile parameters
clc;clear;

mydate = [2025 10 3 12 0 0];
OutData = IRI2020(45,120,mydate,100:10:1000);

figure;
plot(OutData.dens,OutData.alt,'k-');
set(gca,'XMinorTick','on','YMinorTick','on');
xlabel('IED/(km)','fontsize',8);ylabel('Height/(km)','fontsize',8);
set(gca,'fontsize',8,'fontname','times')
title([' UTC @ ',datestr(mydate)])

