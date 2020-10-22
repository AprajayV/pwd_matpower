function dummy = set_bus_file(bus_mpc)
    fileID = fopen("Bus_data1.aux","w+");
    fieldnames = "[BusNum,BusLoadMW,BusLoadMVR,BusG,BusB,AreaNum,BusPUVolt,BusAngle,BusNomVolt,ZoneNum]";
    bus_mpc(:,2) = [];
    fprintf(fileID,"SCRIPT set_bus {\n");
    for i_ = 1:size(bus_mpc,1)
    fieldvalues = busfieldvaluesstr(bus_mpc(i_,:));
    fprintf(fileID,"SetData(BUS," + fieldnames + "," + fieldvalues + ");\n");
    dummy = 0;
    end
    fprintf(fileID,"\n}");
    fclose(fileID);
    fclose all;
end
    
