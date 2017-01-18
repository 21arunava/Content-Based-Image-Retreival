for i=400:500
    a=num2str(i);
    b='.jpg';
    c1='.bmp';
    filename=strcat(a,b);
    c=imread(filename);
    d=imresize(c,[256 256]);
m=strcat(a,c1);
    imwrite(d,m);
end