function str_curated = genfieldvaluesstr(mpc_gen_rowd,genID)
	str_curated = "[";
	str_curated = str_curated + num2str(genID) + ",";
	for I_ = 1:7
		str_curated = str_curated + num2str(mpc_gen_rowd(I_)) + ",";
	end
	str_curated = str_curated + num2str(mpc_gen_rowd(9)) + ",";
	str_curated = str_curated + num2str(mpc_gen_rowd(10)) + ",";
	str_curated = str_curated + num2str(mpc_gen_rowd(17)) + ",";
	str_curated = str_curated + num2str(mpc_gen_rowd(21)) + ",";
	str_curated = str_curated + num2str(mpc_gen_rowd(2)) + ",";
	str_curated = str_curated + num2str(mpc_gen_rowd(3)) + "]";
	
