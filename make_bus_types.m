function [bus_types] = make_gen_type(slack_csv,bus_mpc, gen_mpc)
		slack_table = readtable(slack_csv);
		slack_bus = [];
		bus_types = ones(size(bus_mpc,1),1);
		for i_ = 1:size(bus_mpc,1); if slack_table{:,2}{i_} == "YES"; slack_bus=[slack_bus,i_]; end; end;
		bus_types(gen_mpc(:,1)) = 2*ones(size(gen_mpc,1),1);
		bus_types(slack_bus) = 3*ones(size(slack_bus,1),1);
end
