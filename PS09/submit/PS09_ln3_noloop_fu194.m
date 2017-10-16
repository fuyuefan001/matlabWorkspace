function [result,diff]= PS09_ln3_noloop_fu194(numTerm)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%add comment with your decription
%
% Function Call
%add comment that states the function call for this function
%
% Input Arguments
%add comment list of the input arguments for this function
%
% Output Arguments
%add comment list of the output arguments for this function
%
% Assignment Information
%   Assignment:       	PS ##, Problem #
%   Author:             Name, login@purdue.edu
%   Team ID:            ###-##   
%   Paired Programmer:  Name, login@purdue.edu   
%  	Contributor: 		Name, login@purdue [repeat for each]
%did you complete the assignment information? delete this line if yes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
result=-99;
diff=-99;
if(length(numTerm)~=1)
    fprintf('Error: input must be a scaler\n')
    return;
elseif(mod(numTerm,1)~=0||numTerm<=0)
    fprintf('Error: input must be a positive integer\n')
    return;
else
    result=0;
end
%% ____________________
%% CALCULATIONS
flag=[1:1:numTerm];
terms=1./4.^(flag-1)./(2.*flag-1);
result=sum(terms);
diff=abs(log(3)-result);

%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
end