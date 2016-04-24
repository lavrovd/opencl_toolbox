% %%%%%%%%%%%%%%%% CONFIGURATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%opencl_include_dir = '/usr/include';
%opencl_lib_dir = '/usr/lib';
opencl_include_dir = '/System/Library/Frameworks/OpenCL.framework/Headers';
opencl_lib_dir = 'C:\Program Files\ATI Stream\lib\x86';
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ldflags = 'LDFLAGS=$LDFLAGS -framework OpenCL';
cxxflags = 'CXXFLAGS=$CXXFLAGS -framework OpenCL';
mex('src/openclcmd.cpp', '-Iinclude', cxxflags,  ldflags, '-v' );

