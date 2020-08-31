clear all
cd d:\cindy
 %load 4D input [time*electrode*electrode*sub]
 a=load(input('Enter name of matlab file:\n','s'));
 a=struct2array(a);
 
 cd d:\cindy
 %load 4D input [time*electrode*electrode*sub]
 b=load(input('Enter name of matlab file:\n','s'));
 b=struct2array(b);
 
load chanlocs_data
chanlocs_data=chanlocs_data(1:60);
%take only 60 channels
var1=a(:,1:60,1:60,:);

var2=b(:,1:60,1:60,:);


timeRange=input('Enter time range in sec:[t1 t2]\n');
%time range to calculate mean (dimension 1)
t1t2=timeRange*250+501; % finding the samples locations

data_t1t2_var1=reshape(mean(var1([t1t2(1):t1t2(2)],:,:,:)),60,60,size(var1,4)); %[60*60*subjects]
MEANdata_t1t2_var1=mean(data_t1t2_var1,3); %size[60*60 coz 60 electrodes]

data_t1t2_var2=reshape(mean(var2([t1t2(1):t1t2(2)],:,:,:)),60,60,size(var2,4));
MEANdata_t1t2_var2=mean(data_t1t2_var2,3);
deltamean=MEANdata_t1t2_var1-MEANdata_t1t2_var2;

for i=1:60
for j=1:60
    %since lower rows are zero for varible data_t1t2_var1, replace lower
    %rows with above results. Also, diagnol is chaged to zero.
if(j>i)
k1(i,j,:)=data_t1t2_var1(i,j,:);
k2(i,j,:)=data_t1t2_var2(i,j,:);
else
k1(i,j,:)=data_t1t2_var1(j,i,:);
k2(i,j,:)=data_t1t2_var2(j,i,:);
end
end
end


pairORunpair=input('Enter on for paired:\n off for unpaired: \n','s');
%[F,df,p31_HVvsPNP]=statcond({data_t1t2_HV data_t1t2_PNP},'paired','off'); %%%%% size is 61*61*subjects


for i=1:60
for j=1:60
    
data1=k1(i,j,:)*100;
data2=k2(i,j,:)*100;
%apply over subjects i.e. 3rd dimension
[F,df,p(i,j)]=statcond({data1 data2},'paired',pairORunpair); %'mode','param');

end
end


%p_fdr=fdr(p);
for ab=1:60
p_fdr(ab,:)=fdr(p(ab,:));
end

adjMat_p=(p-tril(p)); %%%%lower triangle is zero
adjMat_p_fdr=(p_fdr-tril(p_fdr)); %%%%lower triangle is zero
%adjMat_p31_HVvsPNP=(p31_HVvsPNP-tril(p31_HVvsPNP))<0.05; %%%% also true and short



for i=1:60
for j=1:60
    %replace lower rows equal to above rows
   if(i==j)
       adjMat_p(i,j)=1;
       adjMat_p_fdr(i,j)=1;
       MEANdata_t1t2_var1(i,j)=1;
       MEANdata_t1t2_var2(i,j)=1;
       deltamean(i,j)=1;
   else
      adjMat_p(i,j)=adjMat_p(i,j);
      adjMat_p_fdr(i,j)=adjMat_p_fdr(i,j);
     MEANdata_t1t2_var1(i,j)=MEANdata_t1t2_var1(i,j);
    MEANdata_t1t2_var2(i,j)=MEANdata_t1t2_var2(i,j);
    deltamean(i,j)=deltamean(i,j);
end
end
end


sign=input('Enter the level for significant 0.05 or 0.01:\n');
for i=1:60
for j=1:60
if(adjMat_p(i,j)>0&adjMat_p(i,j)<sign)
h(i,j)=1;
else
h(i,j)=0;
end
end
end
h=logical(h);


for i=1:60
for j=1:60
if(adjMat_p_fdr(i,j)>0&adjMat_p_fdr(i,j)<sign)
h_fdr(i,j)=1;
else
h_fdr(i,j)=0;
end
end
end
h_fdr=logical(h_fdr);



for i=1:60
for j=1:60
    %replace lower rows equal to above rows
   if(i==j)
       h(i,j)=0;
       h_fdr(i,j)=0;
   else
      h(i,j)=h(i,j);
      h_fdr(i,j)=h_fdr(i,j);
    
end
end
end


[ds.chanPairs(:, 1) ds.chanPairs(:, 2)] = ind2sub(size(h_fdr), find(h_fdr));

figure;
colormap('jet');
subplot(1, 4, 1);
topoplot_connect(ds, chanlocs_data);
title('Connected topoplot');

ds.connectStrength = MEANdata_t1t2_var1(h_fdr);
subplot(1, 4, 2);
topoplot_connect(ds, chanlocs_data);
title('With connection strengths of HV');


ds.connectStrength = MEANdata_t1t2_var2(h_fdr);
subplot(1, 4, 3);
topoplot_connect(ds, chanlocs_data);
title('With connection strengths of PNP');

ds.connectStrength = deltamean(h_fdr);
subplot(1, 4, 4);
topoplot_connect(ds, chanlocs_data);
title('With connection strengths of HV-PNP');