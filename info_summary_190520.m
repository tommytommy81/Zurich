% info_summary_190520

mainfolder = 'C:\Users\Tom\Google Drive\__PC_HSE\code\_GitHub\Sep\'
% mainfolder = '\\172.16.118.134\TFedele\Sep Rahimian\'
folder_scritps = [mainfolder '\']
cd(folder_scritps)

% subject ID for all the folders and excel sheets
subj_ID             = {'WC',    'MA',    'PL',    'SP',    'SA',    'PN',    'NP'     }

% excel file for anatomical info
subj_excel_regions2 = {'B3:D50','B3:D66','B3:D34','B3:D44','B3:D66','B3:D42','B3:D26' } % rec labels, MNI xyz, anatom label
subj_excel_anatomy  = {'G3:G50','G3:G66','G3:G34','G3:G44','G3:G66','G3:G42','E3:E26' } % rec labels, MNI xyz, anatom label

regionsfile         = [mainfolder 'Kingdom\Word and Excel Files\regions2.xlsx']

% excel files for channels selection after preprocessing
good_chans_Enc_file = [mainfolder 'Kingdom\Word and Excel Files\Channels_Enc.xls'] % TRUE FALSE
good_chans_Ret_file = [mainfolder 'Kingdom\Word and Excel Files\Channels_Ret.xls']

% folder repository of data extracted by SEP on 20.01.20 WHERE thee DATA
% EXTRACTED manually from BS is stored - single good trials but all channels

datafile_sep_Enc_trials = [mainfolder 'Kingdom\Files\exported epochs\Enc\']
datafile_sep_Ret_trials = [mainfolder 'Kingdom\Files\exported epochs\Ret\']

% middle step folder
datafile_sep_Enc  = [mainfolder 'Kingdom\Files\exported epochs\Enc\Trials attached together\']
datafile_sep_Ret = [mainfolder 'Kingdom\Files\exported epochs\Ret\Trials attached together\']

% folder repository of data with good channels, and coordinates
folderfiles_Enc_save  = [mainfolder 'Kingdom\Files\exported epochs\Enc\Trials attached together good channels\']
folderfiles_Ret_save  = [mainfolder 'Kingdom\Files\exported epochs\Ret\Trials attached together good channels\']

folderfiles_Enc_save  = [  'D:\_DATA\Sep\Baseline 0\Enc\Trials attached together good channels\']
folderfiles_Ret_save  = [  'D:\_DATA\Sep\Baseline 0\Ret\Trials attached together good channels\']

%% filedtrip toolbox
% 
% if 0
%     ft_folder = 'C:\Program Files\Polyspace\R2019a\toolbox\fieldtrip-20191213\'
%     ft_folder = '\\172.16.118.134\TFedele\Tommaso\Matlab Toolboxes\fieldtrip-20190203\'
%     cd(ft_folder)
%     ft_defaults
%     cd(folder_scritps)
% end
