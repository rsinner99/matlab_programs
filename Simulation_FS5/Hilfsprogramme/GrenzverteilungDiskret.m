function y = GrenzverteilungDiskret(P)
    format rational
    PT = P';
    PT = PT - eye(size(PT));
    PT(end+1,:)=ones(1,size(PT,2));
    B = zeros(size(PT,1),1);
    B(end)=1;
    disp('B = PT')
    B
    PT
    
    y = linsolve(PT,B);
end