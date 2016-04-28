//modified overload toolbo"


//mode(-1);
//lines(0);
//try
// getversion('scilab');
//catch
// error(gettext('Scilab 5.0 or more is required.'));
//end;
// ====================================================================
if ~with_module('development_tools') then
  error(msprintf(gettext('%s module not installed.'),'development_tools'));
end
// ====================================================================
TOOLBOX_NAME = 'Overload_Toolbox';
TOOLBOX_TITLE = 'Overload Toolbox';
// ====================================================================
toolbox_dir = get_absolute_file_path('builder.sce');

tbx_builder_src(toolbox_dir);
tbx_builder_help(toolbox_dir);
tbx_build_loader(TOOLBOX_NAME, toolbox_dir);

clear toolbox_dir TOOLBOX_NAME TOOLBOX_TITLE;

printf ('\nYou can see a demo with exec demos/overload.dem\n')
// ====================================================================
