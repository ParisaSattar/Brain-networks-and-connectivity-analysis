clear all
filtSpec.order = 125;
freq=input('Enter freq range [f1 f2]\n');
filtSpec.range = freq;
srate=250;

timeRange=input('Enter time range in sec for baseline:[t1 t2]\n');
t1t2=timeRange*250+501;
%%%%%%% subject PNP1 %%%%%%%
load PNP1_31;
  PLVPNP1_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_PNP1_31] = pn_eegPLV(PNP1_31(:,:,i), srate, filtSpec);   
PLVPNP1_31(:,:,:,i)= plv_PNP1_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVPNP1_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVPNP1_31_baseline(samples,e1,e2,j)=(PLVPNP1_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
%%%%%%% subject PNP2 %%%%%%%
load PNP2_31;
  PLVPNP2_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_PNP2_31] = pn_eegPLV(PNP2_31(:,:,i), srate, filtSpec);   
PLVPNP2_31(:,:,:,i)= plv_PNP2_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVPNP2_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVPNP2_31_baseline(samples,e1,e2,j)=(PLVPNP2_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
 

%%%%%%% subject PNP3 %%%%%%%
load PNP3_31;
  PLVPNP3_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_PNP3_31] = pn_eegPLV(PNP3_31(:,:,i), srate, filtSpec);   
PLVPNP3_31(:,:,:,i)= plv_PNP3_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVPNP3_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVPNP3_31_baseline(samples,e1,e2,j)=(PLVPNP3_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
 
 
  %%%%%%% subject PNP4 %%%%%%%
load PNP4_31;
  PLVPNP4_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_PNP4_31] = pn_eegPLV(PNP4_31(:,:,i), srate, filtSpec);   
PLVPNP4_31(:,:,:,i)= plv_PNP4_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVPNP4_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVPNP4_31_baseline(samples,e1,e2,j)=(PLVPNP4_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
 
  %%%%%%% subject PNP5 %%%%%%%
load PNP5_31;
  PLVPNP5_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_PNP5_31] = pn_eegPLV(PNP5_31(:,:,i), srate, filtSpec);   
PLVPNP5_31(:,:,:,i)= plv_PNP5_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVPNP5_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVPNP5_31_baseline(samples,e1,e2,j)=(PLVPNP5_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
 
  %%%%%%% subject PNP6 %%%%%%%
load PNP6_31;
  PLVPNP6_31 = zeros(1260,61,61,60); 
  
for i=1:60;
[plv_PNP6_31] = pn_eegPLV(PNP6_31(:,:,i), srate, filtSpec);   
PLVPNP6_31(:,:,:,i)= plv_PNP6_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVPNP6_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1260
PLVPNP6_31_baseline(samples,e1,e2,j)=(PLVPNP6_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
 
  %%%%%%% subject PNP7 %%%%%%%
load PNP7_31;
  PLVPNP7_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_PNP7_31] = pn_eegPLV(PNP7_31(:,:,i), srate, filtSpec);   
PLVPNP7_31(:,:,:,i)= plv_PNP7_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVPNP7_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVPNP7_31_baseline(samples,e1,e2,j)=(PLVPNP7_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
 
  %%%%%%% subject PNP8 %%%%%%%
load PNP8_31;
  PLVPNP8_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_PNP8_31] = pn_eegPLV(PNP8_31(:,:,i), srate, filtSpec);   
PLVPNP8_31(:,:,:,i)= plv_PNP8_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVPNP8_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVPNP8_31_baseline(samples,e1,e2,j)=(PLVPNP8_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
 
 
  %%%%%%% subject PNP9 %%%%%%%
load PNP9_31;
  PLVPNP9_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_PNP9_31] = pn_eegPLV(PNP9_31(:,:,i), srate, filtSpec);   
PLVPNP9_31(:,:,:,i)= plv_PNP9_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVPNP9_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVPNP9_31_baseline(samples,e1,e2,j)=(PLVPNP9_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
