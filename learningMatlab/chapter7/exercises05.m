function strmat = exercises05(str1,str2)
len1 = length(str1);
len2 = length(str2);
len = max(len1,len2);
strmat(2,:) = blanks(len);
strmat(1,:) = [str1,blanks(len-len1)];
strmat(2,:) = [str2,blanks(len-len2)];
end