function fixed_bin=double2bin(a)
%a ???????????,???
%numint????numdec???
%???????1+numint+numdec???1????????
decstr = num2str(a);
fprintf('%s',a);
numint = strfind(decstr,'.')-1;
numdec = length(decstr) - strfind(decstr,'.');
fixed_a=floor(a*2^numdec);  %?????????????
%??
if ((fixed_a>=2^(numint+numdec)) | (fixed_a<-2^(numint+numdec)) )
    fixed_a=sign(a)*(2^(numint+numdec)-1)+0.5*(sign(a)-1);
    %?????2^(numint+numdec)-1??????-2^(numint+numdec)
end
%?????
if (a<0)
    %??????????
    fixed_a=fixed_a+2^(numint+numdec);
    fixed_bin=dec2bin(fixed_a,numint+numdec);
    fixed_bin=strcat('1',fixed_bin);   
else
    fixed_bin=dec2bin(fixed_a,numint+numdec);
    fixed_bin=strcat('0',fixed_bin);
end
