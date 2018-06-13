%% demoVideoMultiCrop
allfiles_ori = uigetfile('*','MultiSelect','on');

if ~ischar(allfiles_ori) %Multiple files, class(allfiles_ori) = cell
    allfiles = cell2struct(allfiles_ori,'name');
else %Single file, class(allfiles_ori) = char
    allfiles = struct;
    allfiles(1).name = allfiles_ori;
end

for fi =1:length(allfiles)
    
    file_name = allfiles(fi).name;
    inVideo=filesFullName(file_name);
    % leave rectPosCell empyt to enforce GUI selection
    rectPosCell = {};
    outVideoFiles=videoMultiCrop('inVideo', inVideo, 'rectPosCell', rectPosCell);
end 
