function GetPositionParticleControlResult = GetPositionParticleControl(obj,authToken,dataset,StartTime,EndTime,spatialInterpolation,points)
%GetPositionParticleControl(obj,authToken,dataset,StartTime,EndTime,spatialInterpolation,points)
%
%   [UNDER DEVELOPMENT] GetPositionParticleControl
%   
%     Input:
%       authToken = (string)
%       dataset = (string)
%       StartTime = (float)
%       EndTime = (float)
%       spatialInterpolation = (SpatialInterpolation)
%       points = (ArrayOfPoint3)
%   
%     Output:
%       GetPositionParticleControlResult = (ArrayOfPoint3)

% Build up the argument lists.
values = { ...
   authToken, ...
   dataset, ...
   StartTime, ...
   EndTime, ...
   spatialInterpolation, ...
   points, ...
   };
names = { ...
   'authToken', ...
   'dataset', ...
   'StartTime', ...
   'EndTime', ...
   'spatialInterpolation', ...
   'points', ...
   };
types = { ...
   '{http://www.w3.org/2001/XMLSchema}string', ...
   '{http://www.w3.org/2001/XMLSchema}string', ...
   '{http://www.w3.org/2001/XMLSchema}float', ...
   '{http://www.w3.org/2001/XMLSchema}float', ...
   '{http://turbulence.pha.jhu.edu/}SpatialInterpolation', ...
   '{http://turbulence.pha.jhu.edu/}ArrayOfPoint3', ...
   };

% Create the message, make the call, and convert the response into a variable.
soapMessage = createSoapMessage( ...
    'http://turbulence.pha.jhu.edu/', ...
    'GetPositionParticleControl', ...
    values,names,types,'document');
response = callSoapService( ...
    obj.endpoint, ...
    'http://turbulence.pha.jhu.edu/GetPositionParticleControl', ...
    soapMessage);
GetPositionParticleControlResult = parseSoapResponse(response);
