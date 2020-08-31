clear all
filtSpec.order = 125;
freq=input('Enter freq range [f1 f2]\n');
filtSpec.range = freq;
srate=250;

timeRange=input('Enter time range in sec for baseline:[t1 t2]\n');
t1t2=timeRange*250+501;


 %%%%%%% subject HV7 %%%%%%%
load HV7_31;
  PLVHV7_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_HV7_31] = pn_eegPLV(HV7_31(:,:,i), srate, filtSpec);   
PLVHV7_31(:,:,:,i)= plv_HV7_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVHV7_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVHV7_31_baseline(samples,e1,e2,j)=(PLVHV7_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
 
 %%%%%%% subject HV8 %%%%%%%
load HV8_31;
  PLVHV8_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_HV8_31] = pn_eegPLV(HV8_31(:,:,i), srate, filtSpec);   
PLVHV8_31(:,:,:,i)= plv_HV8_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVHV8_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVHV8_31_baseline(samples,e1,e2,j)=(PLVHV8_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end
 
 %%%%%%% subject HV9 %%%%%%%
load HV9_31;
  PLVHV9_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_HV9_31] = pn_eegPLV(HV9_31(:,:,i), srate, filtSpec);   
PLVHV9_31(:,:,:,i)= plv_HV9_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVHV9_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVHV9_31_baseline(samples,e1,e2,j)=(PLVHV9_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end

%%%%%%% subject HV11 %%%%%%%
load HV11_31;
  PLVHV11_31 = zeros(1250,61,61,60); 
  
for i=1:60;
[plv_HV11_31] = pn_eegPLV(HV11_31(:,:,i), srate, filtSpec);   
PLVHV11_31(:,:,:,i)= plv_HV11_31;
end

%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    for j= 1:60
    baseline(e1,e2,j)=mean(PLVHV11_31(t1t2(1):t1t2(2),e1,e2,j));

    for samples=1:1250
PLVHV11_31_baseline(samples,e1,e2,j)=(PLVHV11_31(samples,e1,e2,j)-baseline(e1,e2,j));
end
    end
end
 end