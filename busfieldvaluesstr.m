function str_curated = fieldvaluesstr(mpc_bus_row)
str_curated = "[";
for I_ = 1:9 
str_curated =  str_curated + num2str(mpc_bus_row(I_)) + ',';
end
str_curated = str_curated + num2str(mpc_bus_row(10)) + "]";
