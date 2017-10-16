function [ phase ] = calc( massN,temp )
syms a1 b1 a2 b2;%assume two lines are temp=massN*a+b

if(temp<massN*a1+b1)
    phase='alpha';
elseif(temp<massN*a2+b2)
    phase='alpha+L';
else
    phase='L';
end

end

