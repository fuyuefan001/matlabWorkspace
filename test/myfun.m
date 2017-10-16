
function myfun
    %MYUCN Summary of this function goes here
    %   Detailed explanation goes here
    x=0;
    while(1)
        if(x==5);
            continue;
        end
        fprintf('%d\n',x);
        if(x==10);
            break;
        end
        fprintf('%d\n',x);
        if(x==20);
            return;
        end
        fprintf('%d\n',x);
        x=x+1;
    end
    fprintf('log for finish while loop');
    fprintf('%d\n',x);
    fprintf('log for finish function')
end

