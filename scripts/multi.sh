#!/usr/bin/env bash

#data_path='data/PeMS/V_228.csv' #path to the MTS data
#adj_path='data/PeMS/W_228.csv'  #path to the adjacency matrix, None if not exists
#data_root='data/PeMS' #Directory to the MTS data
#
#stamp_path="${data_root}/time_stamp.npy"
#training model
python main_stamp.py train --device=cpu --n_route=228 --n_his=12 --n_pred=12 --n_train=34 --n_val=5 --n_test=5 --mode=1 --name='PeMS'\
    --data_path="data/PeMS/V_228.csv" --adj_matrix_path="data/PeMS/W_228.csv" --stamp_path=$stamp_path



# RUN ON TERMINAL
# Always adjust config file as well


python main_stamp.py train "
  --device cpu
  --n_route 11
  --n_his 18
  --n_pred 12
  --n_train 100
  --n_val 10
  --n_test 10
  --mode 1
  --name 'PeMS'
  --data_path 'data/Big Electricity/Germany_2023-2023_Biomass_Gas_HardCoal_Oil_HydrPS_HydrPS_HydrRiver_WaterRes_Solar_WindOff_WindOn.csv'
  --adj_matrix_path 'data/Big Electricity/Correlations/corr_Germany_2023-2023_Biomass_Gas_HardCoal_Oil_HydrPS_HydrPS_HydrRiver_WaterRes_Solar_WindOff_WindOn.csv'
  --stamp_path 'data/Big Electricity/Timestamps/ts_Germany_2023-2023_Biomass_Gas_HardCoal_Oil_HydrPS_HydrPS_HydrRiver_WaterRes_Solar_WindOff_WindOn.npy'
"



