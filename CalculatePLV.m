
filtSpec.order = 50;
freq=input('Enter freq range [f1 f2]\n');
filtSpec.range = freq;
srate=250;

%%%%%%% subject HV1 %%%%%%%
load HV1_31;
[plv_HV1_31_theta] = pn_eegPLV(HV1_31, srate, filtSpec);


%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    baseline(e1,e2)=mean(plv_HV1_31_theta(100:275,e1,e2));
for samples=1:1250

plv_HV1_31_theta_baseline(samples,e1,e2)=(plv_HV1_31_theta(samples,e1,e2)-baseline(e1,e2));
end
end
 end

 
 %%%%%%% subject HV2 %%%%%%%
load HV2_31;
[plv_HV2_31_theta] = pn_eegPLV(HV2_31, srate, filtSpec);


%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    baseline(e1,e2)=mean(plv_HV2_31_theta(100:275,e1,e2));
for samples=1:1250

plv_HV2_31_theta_baseline(samples,e1,e2)=(plv_HV2_31_theta(samples,e1,e2)-baseline(e1,e2));
end
end
 end
 
 
 %%%%%%% subject HV3 %%%%%%%
load HV4_31;
[plv_HV4_31_theta] = pn_eegPLV(HV4_31, srate, filtSpec);


%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    baseline(e1,e2)=mean(plv_HV4_31_theta(100:275,e1,e2));
for samples=1:1250

plv_HV4_31_theta_baseline(samples,e1,e2)=(plv_HV4_31_theta(samples,e1,e2)-baseline(e1,e2));
end
end
 end
 
 
 %%%%%%% subject HV4 %%%%%%%
load HV5_31;
[plv_HV5_31_theta] = pn_eegPLV(HV5_31, srate, filtSpec);


%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    baseline(e1,e2)=mean(plv_HV5_31_theta(100:275,e1,e2));
for samples=1:1250

plv_HV5_31_theta_baseline(samples,e1,e2)=(plv_HV5_31_theta(samples,e1,e2)-baseline(e1,e2));
end
end
 end
 
 
 %%%%%%% subject HV5 %%%%%%%
load HV6_31;
[plv_HV6_31_theta] = pn_eegPLV(HV6_31, srate, filtSpec);


%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    baseline(e1,e2)=mean(plv_HV6_31_theta(100:275,e1,e2));
for samples=1:1250

plv_HV6_31_theta_baseline(samples,e1,e2)=(plv_HV6_31_theta(samples,e1,e2)-baseline(e1,e2));
end
end
 end
 
 %%%%%%% subject HV6 %%%%%%%
load HV7_31;
[plv_HV7_31_theta] = pn_eegPLV(HV7_31, srate, filtSpec);


%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    baseline(e1,e2)=mean(plv_HV7_31_theta(100:275,e1,e2));
for samples=1:1250

plv_HV7_31_theta_baseline(samples,e1,e2)=(plv_HV7_31_theta(samples,e1,e2)-baseline(e1,e2));
end
end
 end
 
 
 %%%%%%% subject HV7 %%%%%%%
load HV8_31;
[plv_HV8_31_theta] = pn_eegPLV(HV8_31, srate, filtSpec);


%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    baseline(e1,e2)=mean(plv_HV8_31_theta(100:275,e1,e2));
for samples=1:1250

plv_HV8_31_theta_baseline(samples,e1,e2)=(plv_HV8_31_theta(samples,e1,e2)-baseline(e1,e2));
end
end
 end
 
 
 %%%%%%% subject HV8 %%%%%%%
load HV9_31;
[plv_HV9_31_theta] = pn_eegPLV(HV9_31, srate, filtSpec);


%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    baseline(e1,e2)=mean(plv_HV9_31_theta(100:275,e1,e2));
for samples=1:1250

plv_HV9_31_theta_baseline(samples,e1,e2)=(plv_HV9_31_theta(samples,e1,e2)-baseline(e1,e2));
end
end
 end
 
 
 %%%%%%% subject HV9 %%%%%%%
load HV11_31;
[plv_HV11_31_theta] = pn_eegPLV(HV11_31, srate, filtSpec);


%%%%%%%% defining baseline %%%%%%%%%%%%%%%%%%%

 for e1=1:61
for e2=1:61
    baseline(e1,e2)=mean(plv_HV11_31_theta(100:275,e1,e2));
for samples=1:1250

plv_HV11_31_theta_baseline(samples,e1,e2)=(plv_HV11_31_theta(samples,e1,e2)-baseline(e1,e2));
end
end
 end
 