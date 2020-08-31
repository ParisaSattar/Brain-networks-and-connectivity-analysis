for i=1:60
    for j=1:60
        if(i==j)
            MEANdata_t1t2_var1(i,j)=0;
            MEANdata_t1t2_var2(i,j)=0;
            deltamean(i,j)=0;
        else
            MEANdata_t1t2_var1(i,j)=MEANdata_t1t2_var1(i,j);
            MEANdata_t1t2_var2(i,j)=MEANdata_t1t2_var2(i,j);
            deltamean(i,j)=deltamean(i,j);
        end
    end
end

[max(max(MEANdata_t1t2_var1)), min(min(MEANdata_t1t2_var1));max(max(MEANdata_t1t2_var2)), min(min(MEANdata_t1t2_var2))]