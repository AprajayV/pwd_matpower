function dummy = set_gen_file(mpc_gen)
	fileID = fopen("Gen_data1.aux","w+");
	fieldnames = "[GenID,BusNum,MWSetPoint,MvarSetPoint,GenMVRMax,GenMVRMin,BusPUVolt,GenMVABase,GenMWMax,GenMWMin,GenMWRampLimit,GenParFac,GenMW,GenMVR]";
	fprintf(fileID,"SCRIPT set_gen{\n");
    genID = generateID(mpc_gen(:,1));
	for i_ = 1:size(mpc_gen,1)
		fieldvalues = genfieldvaluesstr(mpc_gen(i_,:),genID(i_));
		fprintf(fileID,"SetData(GEN," + fieldnames + "," + fieldvalues + ");\n");
		dummy = 0;
	end
	fprintf(fileID,"\n}");
	fclose(fileID);
    fclose all;
end
	
