%% Import data from text file.
% Script for importing data from the following text file:
%
%    C:\Users\systems\SkyDrive\Documents\MyTemp\Tietotekniikka\Anomaly
%    Detection\part2\nslkdd\NSLKDD_train.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2015/02/09 22:28:10

%% Initialize variables.
filename = 'C:\Users\systems\SkyDrive\Documents\MyTemp\Tietotekniikka\Anomaly Detection\part2\nslkdd\NSLKDD_train.csv';
delimiter = ',';
startRow = 2;

%% Format string for each line of text:
%   column1: double (%f)
%	column2: text (%s)
%   column3: text (%s)
%	column4: text (%s)
%   column5: double (%f)
%	column6: double (%f)
%   column7: double (%f)
%	column8: double (%f)
%   column9: double (%f)
%	column10: double (%f)
%   column11: double (%f)
%	column12: double (%f)
%   column13: double (%f)
%	column14: double (%f)
%   column15: double (%f)
%	column16: double (%f)
%   column17: double (%f)
%	column18: double (%f)
%   column19: double (%f)
%	column20: double (%f)
%   column21: double (%f)
%	column22: double (%f)
%   column23: double (%f)
%	column24: double (%f)
%   column25: double (%f)
%	column26: double (%f)
%   column27: double (%f)
%	column28: double (%f)
%   column29: double (%f)
%	column30: double (%f)
%   column31: double (%f)
%	column32: double (%f)
%   column33: double (%f)
%	column34: double (%f)
%   column35: double (%f)
%	column36: double (%f)
%   column37: double (%f)
%	column38: double (%f)
%   column39: double (%f)
%	column40: double (%f)
%   column41: double (%f)
%	column42: text (%s)
%   column43: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%s%s%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%s%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
duration = dataArray{:, 1};
protocol_types = dataArray{:, 2};
services = dataArray{:, 3};
flags = dataArray{:, 4};
src_bytes = dataArray{:, 5};
dst_bytes = dataArray{:, 6};
lands = dataArray{:, 7};
wrong_fragment = dataArray{:, 8};
urgent = dataArray{:, 9};
hot1 = dataArray{:, 10};
num_failed_logins = dataArray{:, 11};
logged_ins = dataArray{:, 12};
num_compromised = dataArray{:, 13};
root_shell = dataArray{:, 14};
su_attempted = dataArray{:, 15};
num_root = dataArray{:, 16};
num_file_creations = dataArray{:, 17};
num_shells = dataArray{:, 18};
num_access_files = dataArray{:, 19};
num_outbound_cmds = dataArray{:, 20};
is_host_logins = dataArray{:, 21};
is_guest_logins = dataArray{:, 22};
count = dataArray{:, 23};
srv_count = dataArray{:, 24};
serror_rate = dataArray{:, 25};
srv_serror_rate = dataArray{:, 26};
rerror_rate = dataArray{:, 27};
srv_rerror_rate = dataArray{:, 28};
same_srv_rate = dataArray{:, 29};
diff_srv_rate = dataArray{:, 30};
srv_diff_host_rate = dataArray{:, 31};
dst_host_count = dataArray{:, 32};
dst_host_srv_count = dataArray{:, 33};
dst_host_same_srv_rate = dataArray{:, 34};
dst_host_diff_srv_rate = dataArray{:, 35};
dst_host_same_src_port_rate = dataArray{:, 36};
dst_host_srv_diff_host_rate = dataArray{:, 37};
dst_host_serror_rate = dataArray{:, 38};
dst_host_srv_serror_rate = dataArray{:, 39};
dst_host_rerror_rate = dataArray{:, 40};
dst_host_srv_rerror_rate = dataArray{:, 41};
label = dataArray{:, 42};
type1 = dataArray{:, 43};


%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans;