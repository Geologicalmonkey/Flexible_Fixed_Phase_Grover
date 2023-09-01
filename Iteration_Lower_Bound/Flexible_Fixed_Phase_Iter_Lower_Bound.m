clear all;close all;clc;

load Result

for k = [1.0e1,1.0e2,1.0e3,1.0e4,1.0e5,1.0e6]
    count = 0;
    for i = 1:length(Phi)
        if sum(F_I(i,k-N1+1:end) < (k:N2)/2) == N2-k+1
            disp([num2str(i),'Meet requirements!'])
            count = count+1;
            if k == 1.0e1
                Iter1(count) = i;
            elseif k == 1.0e2
                Iter2(count) = i;
            elseif k == 1.0e3
                Iter3(count) = i;
            elseif k == 1.0e4
                Iter4(count) = i;
            elseif k == 1.0e5
                Iter5(count) = i;
            elseif k == 1.0e6
                Iter6(count) = i;
            end
        end
    end
end

Iter = [Iter1(1),Iter2(1),Iter3(1),Iter4(1),Iter5(1),Iter6(1)]*0.00025;

save Irer Iter1 Iter2 Iter3 Iter4 Iter5 Iter6 Iter
