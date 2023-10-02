% Calculation and generation of the "a" cumulative matrix

%% Load mat file

load matlab.mat;

%% Extracting coefficients
C1 = E837_20_NUS_Poly_a.C1(8);
C2 = E837_20_NUS_Poly_a.C2(8);
C3 = E837_20_NUS_Poly_a.C3(8);
C4 = E837_20_NUS_Poly_a.C4(8);
C5 = E837_20_NUS_Poly_a.C5(8);
C6 = E837_20_NUS_Poly_a.C6(8);
C7 = E837_20_NUS_Poly_a.C7(8);
C8 = E837_20_NUS_Poly_a.C8(8);
C9 = E837_20_NUS_Poly_a.C9(8);
C10 = E837_20_NUS_Poly_a.C10(8);
C11 = E837_20_NUS_Poly_a.C11(8);
C12 = E837_20_NUS_Poly_a.C12(8);
C13 = E837_20_NUS_Poly_a.C13(8);
C14 = E837_20_NUS_Poly_a.C14(8);
C15 = E837_20_NUS_Poly_a.C15(8);

%% Define the constant input variable D
D = 5.13; % Example value of D

% combinations = [
% 0.05,0.050;%h1and H11
% 0.1,0.050;%h2and H21
% 0.1,0.100;%h2and H22
% 0.15,0.050;%h3and H31
% 0.15,0.100;%h3and H32
% 0.15,0.150;%h3and H33
% 0.2,0.050;%h4and H41
% 0.2,0.100;%h4and H42
% 0.2,0.150;%h4and H43
% 0.2,0.200;%h4and H44
% 0.25,0.050;%h5and H51
% 0.25,0.100;%h5and H52
% 0.25,0.150;%h5and H53
% 0.25,0.200;%h5and H54
% 0.25,0.250;%h5and H55
% 0.3,0.050;%h6and H61
% 0.3,0.100;%h6and H62
% 0.3,0.150;%h6and H63
% 0.3,0.200;%h6and H64
% 0.3,0.250;%h6and H65
% 0.3,0.300;%h6and H66
% 0.35,0.050;%h7and H71
% 0.35,0.100;%h7and H72
% 0.35,0.150;%h7and H73
% 0.35,0.200;%h7and H74
% 0.35,0.250;%h7and H75
% 0.35,0.300;%h7and H76
% 0.35,0.350;%h7and H77
% 0.4,0.050;%h8and H81
% 0.4,0.100;%h8and H82
% 0.4,0.150;%h8and H83
% 0.4,0.200;%h8and H84
% 0.4,0.250;%h8and H85
% 0.4,0.300;%h8and H86
% 0.4,0.350;%h8and H87
% 0.4,0.400;%h8and H88
% 0.45,0.050;%h9and H91
% 0.45,0.100;%h9and H92
% 0.45,0.150;%h9and H93
% 0.45,0.200;%h9and H94
% 0.45,0.250;%h9and H95
% 0.45,0.300;%h9and H96
% 0.45,0.350;%h9and H97
% 0.45,0.400;%h9and H98
% 0.45,0.450;%h9and H99
% 0.5,0.050;%h10and H101
% 0.5,0.100;%h10and H102
% 0.5,0.150;%h10and H103
% 0.5,0.200;%h10and H104
% 0.5,0.250;%h10and H105
% 0.5,0.300;%h10and H106
% 0.5,0.350;%h10and H107
% 0.5,0.400;%h10and H108
% 0.5,0.450;%h10and H109
% 0.5,0.500;%h10and H1010
% 0.55,0.050;%h11and H111
% 0.55,0.100;%h11and H112
% 0.55,0.150;%h11and H113
% 0.55,0.200;%h11and H114
% 0.55,0.250;%h11and H115
% 0.55,0.300;%h11and H116
% 0.55,0.350;%h11and H117
% 0.55,0.400;%h11and H118
% 0.55,0.450;%h11and H119
% 0.55,0.500;%h11and H1110
% 0.55,0.550;%h11and H1111
% 0.6,0.050;%h12and H121
% 0.6,0.100;%h12and H122
% 0.6,0.150;%h12and H123
% 0.6,0.200;%h12and H124
% 0.6,0.250;%h12and H125
% 0.6,0.300;%h12and H126
% 0.6,0.350;%h12and H127
% 0.6,0.400;%h12and H128
% 0.6,0.450;%h12and H129
% 0.6,0.500;%h12and H1210
% 0.6,0.550;%h12and H1211
% 0.6,0.600;%h12and H1212
% 0.65,0.050;%h13and H131
% 0.65,0.100;%h13and H132
% 0.65,0.150;%h13and H133
% 0.65,0.200;%h13and H134
% 0.65,0.250;%h13and H135
% 0.65,0.300;%h13and H136
% 0.65,0.350;%h13and H137
% 0.65,0.400;%h13and H138
% 0.65,0.450;%h13and H139
% 0.65,0.500;%h13and H1310
% 0.65,0.550;%h13and H1311
% 0.65,0.600;%h13and H1312
% 0.65,0.650;%h13and H1313
% 0.7,0.050;%h14and H141
% 0.7,0.100;%h14and H142
% 0.7,0.150;%h14and H143
% 0.7,0.200;%h14and H144
% 0.7,0.250;%h14and H145
% 0.7,0.300;%h14and H146
% 0.7,0.350;%h14and H147
% 0.7,0.400;%h14and H148
% 0.7,0.450;%h14and H149
% 0.7,0.500;%h14and H1410
% 0.7,0.550;%h14and H1411
% 0.7,0.600;%h14and H1412
% 0.7,0.650;%h14and H1413
% 0.7,0.700;%h14and H1414
% 0.75,0.050;%h15and H151
% 0.75,0.100;%h15and H152
% 0.75,0.150;%h15and H153
% 0.75,0.200;%h15and H154
% 0.75,0.250;%h15and H155
% 0.75,0.300;%h15and H156
% 0.75,0.350;%h15and H157
% 0.75,0.400;%h15and H158
% 0.75,0.450;%h15and H159
% 0.75,0.500;%h15and H1510
% 0.75,0.550;%h15and H1511
% 0.75,0.600;%h15and H1512
% 0.75,0.650;%h15and H1513
% 0.75,0.700;%h15and H1514
% 0.75,0.750;%h15and H1515
% 0.8,0.050;%h16and H161
% 0.8,0.100;%h16and H162
% 0.8,0.150;%h16and H163
% 0.8,0.200;%h16and H164
% 0.8,0.250;%h16and H165
% 0.8,0.300;%h16and H166
% 0.8,0.350;%h16and H167
% 0.8,0.400;%h16and H168
% 0.8,0.450;%h16and H169
% 0.8,0.500;%h16and H1610
% 0.8,0.550;%h16and H1611
% 0.8,0.600;%h16and H1612
% 0.8,0.650;%h16and H1613
% 0.8,0.700;%h16and H1614
% 0.8,0.750;%h16and H1615
% 0.8,0.800;%h16and H1616
% 0.85,0.050;%h17and H171
% 0.85,0.100;%h17and H172
% 0.85,0.150;%h17and H173
% 0.85,0.200;%h17and H174
% 0.85,0.250;%h17and H175
% 0.85,0.300;%h17and H176
% 0.85,0.350;%h17and H177
% 0.85,0.400;%h17and H178
% 0.85,0.450;%h17and H179
% 0.85,0.500;%h17and H1710
% 0.85,0.550;%h17and H1711
% 0.85,0.600;%h17and H1712
% 0.85,0.650;%h17and H1713
% 0.85,0.700;%h17and H1714
% 0.85,0.750;%h17and H1715
% 0.85,0.800;%h17and H1716
% 0.85,0.850;%h17and H1717
% 0.9,0.050;%h18and H181
% 0.9,0.100;%h18and H182
% 0.9,0.150;%h18and H183
% 0.9,0.200;%h18and H184
% 0.9,0.250;%h18and H185
% 0.9,0.300;%h18and H186
% 0.9,0.350;%h18and H187
% 0.9,0.400;%h18and H188
% 0.9,0.450;%h18and H189
% 0.9,0.500;%h18and H1810
% 0.9,0.550;%h18and H1811
% 0.9,0.600;%h18and H1812
% 0.9,0.650;%h18and H1813
% 0.9,0.700;%h18and H1814
% 0.9,0.750;%h18and H1815
% 0.9,0.800;%h18and H1816
% 0.9,0.850;%h18and H1817
% 0.9,0.900;%h18and H1818
% 0.95,0.050;%h19and H191
% 0.95,0.100;%h19and H192
% 0.95,0.150;%h19and H193
% 0.95,0.200;%h19and H194
% 0.95,0.250;%h19and H195
% 0.95,0.300;%h19and H196
% 0.95,0.350;%h19and H197
% 0.95,0.400;%h19and H198
% 0.95,0.450;%h19and H199
% 0.95,0.500;%h19and H1910
% 0.95,0.550;%h19and H1911
% 0.95,0.600;%h19and H1912
% 0.95,0.650;%h19and H1913
% 0.95,0.700;%h19and H1914
% 0.95,0.750;%h19and H1915
% 0.95,0.800;%h19and H1916
% 0.95,0.850;%h19and H1917
% 0.95,0.900;%h19and H1918
% 0.95,0.950;%h19and H1919
% 1,0.050;%h20and H201
% 1,0.100;%h20and H202
% 1,0.150;%h20and H203
% 1,0.200;%h20and H204
% 1,0.250;%h20and H205
% 1,0.300;%h20and H206
% 1,0.350;%h20and H207
% 1,0.400;%h20and H208
% 1,0.450;%h20and H209
% 1,0.500;%h20and H2010
% 1,0.550;%h20and H2011
% 1,0.600;%h20and H2012
% 1,0.650;%h20and H2013
% 1,0.700;%h20and H2014
% 1,0.750;%h20and H2015
% 1,0.800;%h20and H2016
% 1,0.850;%h20and H2017
% 1,0.900;%h20and H2018
% 1,0.950;%h20and H2019
% 1,1.000;%h20and H2020
% %     % Add more combinations as needed (h4 and H41, h5 and H51, etc.)
%  ];

%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:

%% Prompt for the spreadsheet
% Select the spreadsheet file using the file dialog
[filename, filepath] = uigetfile('.xlsx', 'Select the spreadsheet file');

%% Check if the user canceled the file selection
if filename == 0
    error('Spreadsheet file selection cancelled.');
end

%% Create the full file path
spreadsheetPath = fullfile(filepath, filename);


%% Set up the Import Options and import the data
opts = spreadsheetImportOptions("NumVariables", 2);

%% Specify sheet
opts.Sheet = "To compare to E837-13a";

%% Read the data without specifying the data range
hj_Hk = readtable(spreadsheetPath, opts, "UseExcel", false);

%% Find the data range
[~, lastCol] = size(hj_Hk);
dataRange = ['A1:', char('A' + lastCol - 1), num2str(height(hj_Hk))];

%% Populate the opts.DataRange variable
opts.DataRange = dataRange;

%% Specify column names and types
opts.VariableNames = ["Var1", "Var2"];
opts.VariableTypes = ["double", "double"];

%% Import the data again with the updated data range
hj_Hk = readtable(spreadsheetPath, opts, "UseExcel", false);

%% Convert to output type
combinations = table2array(hj_Hk);

%% Clear temporary variables
clear opts

%% Initialize an array to store the results for different combinations
ajk_vertical = zeros(size(combinations, 1), 1);

%% Loop through the combinations of hj and Hk
for i = 1:size(combinations, 1)
    hj = combinations(i, 1);
    Hk = combinations(i, 2);
    
    % Calculate ajk for the current values of Hk and hj
    ajk = C1*(Hk/D) + C2*(Hk/D)^2 + C3*(Hk/D)*(hj/D) + C4*(Hk/D)^3 + C5*(Hk/D)^2*(hj/D) + ...
          C6*(Hk/D)*(hj/D)^2 + C7*(Hk/D)^4 + C8*(Hk/D)^3*(hj/D) + C9*(Hk/D)^2*(hj/D)^2 + ...
          C10*(Hk/D)*(hj/D)^3 + C11*(Hk/D)^5 + C12*(Hk/D)^4*(hj/D) + C13*(Hk/D)^3*(hj/D)^2 + ...
          C14*(Hk/D)^2*(hj/D)^3 + C15*(Hk/D)*(hj/D)^4;
    
    % Store the result in the results array
    ajk_vertical(i) = ajk;
end

%% Display the results
disp('Results for different combinations of hj and Hk:');
disp(ajk_vertical);

%% Determine the size of the square lower triangular matrix
n = sqrt(2 * length(ajk_vertical) + 0.25) - 0.5;

%% Initialize the lower triangular matrix with zeros
ajk_lower_triangular = zeros(n);

% Fill the lower triangular matrix
k = 1;
for i = 1:n
    for j = 1:i
        ajk_lower_triangular(i, j) = ajk_vertical(k);
        k = k + 1;
    end
end

%% Display the lower triangular matrix
disp('Lower Triangular Matrix for ajk:');
disp(ajk_lower_triangular);

% Calculate the calibration matrix ajk_cali
ajk_cali = ajk_lower_triangular;

% Calculate the values for the second column and onwards
for j = 2:n
    for i = j:n
        ajk_cali(i, j) = ajk_cali(i, j) - sum(ajk_cali(i, 1:j-1));
    end
end

% Display the calibration matrix
disp('Calibration matrix for the ajk_cali:');
for i = 1:n
    fprintf('Row %d\t', i);
    for j = 1:n
        fprintf('%.4f\t', ajk_cali(i, j));
    end
    fprintf('\n');
end

% Condition number of the matrix

ajk_cali_cond = cond(ajk_cali);

% Display the condition number of the calibration matrix
disp('The condition number of the calibration matrix:');
disp(ajk_cali_cond);