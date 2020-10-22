# pwd_matpower
Communication of power world with matpower
## How to use
### Writing Power world data to csv files
1. Open pwb file from Power world simulator. Run pf in flat start.
2. Click on **scripts** in Tools section and type
```code
LoadScript("data_grep.aux",data_write);
```
3. Check for newly created csv files in current directory.
### Reading csv files in matlab
1. Type in matlab command line
```code
powerworld_mpc.bus = get_bus_mpc("bus_5.csv");
powerworld_mpc.branch = get_branch_mpc("branch_5.csv");
powerworld_mpc.gen = get_gen_mpc("gen_5.csv");
powerworld_mpc.gencost = get_gencost_mpc("gencost_5.csv");
powerworld_mpc.version = 2;
powerworld_mpc.baseMVA = 100;
```
2. Set bus types through
```code
powerworld_mpc.bus(:,2) = make_bus_types("slack_bus.csv",powerworld_mpc.bus,powerworld_mpc.gen);
```
3. Run OPF through
```code
results_mpc = runopf(powerworld_mpc);
```
### Set data for Power World
1. In matlab command line type
```code
set_gen_file(results_mpc.gen);
set_bus_file(results_mpc.bus);
```
### Updating Data in Power world
1. In scripts dialogue type
```code
LoadScript("Bus_data1.aux",set_bus);
LoadScript("Gen_data1.aux",set_gen);
```
