function GetBoxFilterSGSStressResult = GetBoxFilterSGSStress(obj,authToken,dataset,time,filterlength,nlayers,temporalInterpolation,points)
%GetBoxFilterSGSStress(obj,authToken,dataset,time,filterlength,nlayers,temporalInterpolation,points)
%
%   BoxFilterForSubGridScaleStress
%   
%     Input:
%       authToken = (string)
%       dataset = (string)
%       time = (float)
%       filterlength = (float)
%       nlayers = (int)
%       temporalInterpolation = (TemporalInterpolation)
%       points = (ArrayOfPoint3)
%   
%     Output:
%       GetBoxFilterSGSStressResult = (ArrayOfSGSStress)

% Build up the argument lists.
values = { ...
   authToken, ...
   dataset, ...
   time, ...
   filterlength, ...
   nlayers, ...
   temporalInterpolation, ...
   points, ...
   };
names = { ...
   'authToken', ...
   'dataset', ...
   'time', ...
   'filterlength', ...
   'nlayers', ...
   'temporalInterpolation', ...
   'points', ...
   };
types = { ...
   '{http://www.w3.org/2001/XMLSchema}string', ...
   '{http://www.w3.org/2001/XMLSchema}string', ...
   '{http://www.w3.org/2001/XMLSchema}float', ...
   '{http://www.w3.org/2001/XMLSchema}float', ...
   '{http://www.w3.org/2001/XMLSchema}int', ...
   '{http://turbulence.pha.jhu.edu/}TemporalInterpolation', ...
   '{http://turbulence.pha.jhu.edu/}ArrayOfPoint3', ...
   };

% Create the message, make the call, and convert the response into a variable.
soapMessage = createSoapMessage( ...
    'http://turbulence.pha.jhu.edu/', ...
    'GetBoxFilterSGSStress', ...
    values,names,types,'document');
response = callSoapService( ...
    obj.endpoint, ...
    'http://turbulence.pha.jhu.edu/GetBoxFilterSGSStress', ...
    soapMessage);
GetBoxFilterSGSStressResult = parseSoapResponse(response);
