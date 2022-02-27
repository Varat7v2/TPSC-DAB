clear all;
clc;
close all;

% warning('off','all');

f = 50e3;

% Transformer parameters
N_pri = 1000;
N_sec = 1000;

Vin = 400;
Vout = 400;

% Parameters Initialization
Ts = 0.25;   % sampling time
sim_model = 'dab_code_gen.slx';

Pmin = 10000;
Pmax = 100000;

% % TODO: vary d1, d2 and d3
% d1 --> (0 - pi)
% d2 --> (0 - pi)
% d0 --> (-pi, pi)

% Simulation - Simulink Model
disp('Simulation is running ...');
tic;
data = zeros(1, 5);
for P = Pmin:10000:Pmax
    clear D0 D1 D2;
    for D0 = -1:0.1:1
        for D1 = 0:0.1:1
            for D2 = 0:0.1:1
                % Run the simulink model using 'sim' command
%                 simout = sim(sim_model, Ts);
%                 Vout = simout.yout{1}.Values.Data(end,:);
%                 i_L = simout.yout{2}.Values.Data(end,:);
%                 data(end+1, :) = [D0; D1; D2; P; i_L];
                break
            end
            %break
        end
        %break
    end
    break
end

% myTable = array2table(data);
% myTable.Properties.VariableNames(1:5) = {'D0', 'D1', 'D2', 'P', 'i_L'};
% writetable(myTable,'data/Data_TPS_DAB.csv','Delimiter',',');

disp('Simulation ended !!!');
toc;