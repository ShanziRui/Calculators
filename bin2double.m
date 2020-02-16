function d = bin2double(binstr) 
binstr1 = binstr(strfind(binstr,'.')+1:end);    %?????????
len = length(binstr1);

sum = 0;

for i = 1:len    
    if binstr1(i) == '0'    %??ifelse??????????????
                 
        binstr1(i) = 0;
    else
        binstr1(i) = 1;
    end
    sum = sum + binstr1(i)*2^(-i);
end;

 d = sum + bin2dec(binstr(1:strfind(binstr,'.')-1));