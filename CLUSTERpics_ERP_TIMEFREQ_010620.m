% function plotTF_3cond(TFR1, TFR2, TFR3, data1, data2, data3)

% figure
% compute TF baseline
t = TFR1.time;

timebase = [-1.5 -.5]
[~,samples_base1] = (min(abs(timebase(1)-TFR2.time)));
[~,samples_base2] = (min(abs(timebase(2)-TFR2.time)));
samples_base      = samples_base1:samples_base2;

% normalization to TFR1 baseline
TFbase = (squeeze(nanmean(nanmean(TFR1.powspctrm(:,:,:,samples_base)),4)));

TFR1_norm = TFR1;
TFR2_norm = TFR2;
TFR3_norm = TFR3;

for tr = 1:size(TFR1_norm.powspctrm,1)
    TFR1_norm.powspctrm(tr,1,:,:) = squeeze(TFR1.powspctrm(tr,:,:,:))./repmat(TFbase,1,length(TFR1.time));
end
for tr = 1:size(TFR2_norm.powspctrm,1)
    TFR2_norm.powspctrm(tr,1,:,:) = squeeze(TFR2.powspctrm(tr,:,:,:))./repmat(TFbase,1,length(TFR1.time));
end
for tr = 1:size(TFR3_norm.powspctrm,1)
    TFR3_norm.powspctrm(tr,1,:,:) = squeeze(TFR3.powspctrm(tr,:,:,:))./repmat(TFbase,1,length(TFR1.time));
end


% plot

% TF
cfg              = [];
cfg.baselinetype = 'db';
cfg.zlim         = [-1 2]
N = size(cluster{1,1},1);
ch  = elem

switch sep
    case  1
    subplot(6,5, ch),     ft_singleplotTFR(cfg,  TFR1_norm);
    case 2
    subplot(6,5, ch),     ft_singleplotTFR(cfg, TFR2_norm);
    case 3
    subplot(6,5, ch),     ft_singleplotTFR(cfg, TFR3_norm);
    
%     case  1
%     subplot(3,Nch, ch),     ft_singleplotTFR(cfg,  TFR1_norm);
%     case 2
%     subplot(3,Nch, ch+6),     ft_singleplotTFR(cfg, TFR2_norm);
%     case 3
%     subplot(3,Nch, ch+6*2),     ft_singleplotTFR(cfg, TFR3_norm);
end

% time traces

% subplot(4,N, ch+0*N),
% t = data1.time;
% m = mean(squeeze(data1.trial    ));
% s = std(squeeze(data1.trial    ));
% Ntr = size(squeeze(data1.trial    ),1);
% shadedErrorBar(t, m , s/sqrt(Ntr),'b')
% hold on
% m = mean(squeeze(data2.trial    ));
% s = std(squeeze(data2.trial    ));
% Ntr = size(squeeze(data2.trial    ),1);
% shadedErrorBar(t, m , s/sqrt(Ntr),'g')
% hold on
% m = mean(squeeze(data3.trial    ));
% s = std(squeeze(data3.trial    ));
% Ntr = size(squeeze(data3.trial    ),1);
% shadedErrorBar(t, m , s/sqrt(Ntr),'r')
% axis([-1 2 -2 2])
