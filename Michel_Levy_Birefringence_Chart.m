% Add-on MATLAB Color Tool is needed

close all
clear

lambda=380:780;
%retardation=1:1:3000;
retardation=1:1:1800;
delta_n_1=0.002:0.002:0.060;
d=1:1:51;%um
Y_axis=retardation;
for retardation_loop=retardation 
       T=(sin((pi*retardation_loop)./lambda)).^2;
       XYZ(retardation_loop,:) = rspd2xyz(lambda,T.*100);% Multiply by 100 for the tool box.
       RGB = xyz2rgb(XYZ(retardation_loop,:),'ColorSpace','adobe-rgb-1998'); % 'srgb', 'adobe-rgb-1998', or 'linear-rgb'
       CData(d,retardation_loop,1)=RGB(1);
       CData(d,retardation_loop,2)=RGB(2);
       CData(d,retardation_loop,3)=RGB(3);
end
YData=d-1;
XData=retardation;
d_label=5:5:(max(YData)-5);

f=figure(1);
f.WindowState = 'maximized';
hold on;
box on;
grid off;

xlabel('RETARDATION\ in\ $nm$','Interpreter','latex','FontSize',25);
ylabel('THICKNESS\ in\ $um$','Interpreter','latex','FontSize',25);
t=title('BIREFRINGENCE\ $\Delta n_{max}=n_{1}-n_{2}$','Interpreter','latex','FontSize',25);


sup=suptitle('Michel-Levy Birefringence Chart');
sup.FontSize=30;
sup.Position=[0.5,-0.03,0];
sup.Interpreter='latex';
% set(sup,'Fontsize'

image('XData',XData,'YData',YData,'CData',CData);

ax=gca;
% fig=gcf;
% Outer=fig.OuterPosition;

set(ax,'XLim',[0 max(retardation)],'YLim',[0 max(YData)],'XTick',...
    [0:200:max(retardation)],'FontSize',15,'YTick',[0:10:max(YData)]);

for x = ax.XTick
   line([x x],[0 max(YData)],'Color','k','LineWidth',0.5,'LineStyle','-');
end

for y = ax.YTick
   line([0 max(retardation)],[y y],'Color','k','LineWidth',0.5,'LineStyle','-');
end
%ax2=copy(ax);
ax2=axes;
set(ax2,'XLim',[0 max(retardation)],'YLim',[0 max(YData)],'XTick',...
    [max(YData)*1000*delta_n_1],'XTickLabel',num2cell(delta_n_1),'FontSize',15,...
    'XTickLabelRotation',90,'YTick', [d_label],'YTickLabel',num2cell(round(max(retardation)./(d_label*1000),2)), 'color', 'none',...
    'YAxisLocation', 'right', 'XAxisLocation', 'top','OuterPosition',ax.OuterPosition,'Position',ax.Position);
% fig2=gcf;
% fig2.OuterPosition=Outer;

for delta_n_loop=delta_n_1
    line([0,d*1000*delta_n_loop],[0,d],'Color','k','LineWidth',0.8,'LineStyle','-','Parent',ax2);
    %text(max(d)*1000*delta_n_loop,max(d),num2str(delta_n_loop));
end
%set(gca,'Layer','top');

 for d_loop=d_label
     line([0,3000],[0,d_loop],'Color','k','LineWidth',1.2,'LineStyle','-','Parent',ax2);
 end
 
 
t_position=t.Position;
t_position(2)=54;
t.Position=t_position;

