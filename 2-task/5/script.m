function mytemps
f = figure;
c = uicontrol(f,'Style','popupmenu');
c.Position = [20 75 60 20];
c.String = {'Variant 1','Variant 2','Variant 3'};
c.Callback = @selection;

    function selection(src,event)
        val = c.Value;
        str = c.String;
        disp(['Selection: ' str{val}]);
    end

end
