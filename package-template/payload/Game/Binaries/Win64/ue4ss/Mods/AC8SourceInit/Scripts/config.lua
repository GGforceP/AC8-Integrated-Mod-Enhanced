local selection=require('installation_mode')
local mode=type(selection)=='table' and selection.mode or selection
local hotas=type(selection)=='table' and selection.hotas==true
assert(mode=='guidance' or mode=='full' or (mode=='none' and hotas),'Unsupported missile installation mode')
return {missile_mode=mode,hotas=hotas,acceptance_recording=mode~='none',msl_visuals=mode=='full'}
