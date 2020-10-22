function [mpc_branch] = get_branch_mpc(csv_file)
mpc_branch_read = csvread(csv_file,2);
mpc_branch =[mpc_branch_read,ones(size(mpc_branch_read,1),1),-360 ...
    * ones(size(mpc_branch_read,1),1),360 * ones(size(mpc_branch_read,1),1)
    ];
end