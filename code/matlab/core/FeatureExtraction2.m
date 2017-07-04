function dataFE=FeatureExtraction2(data,sizeWin,sizeStep)


dataFE=[];

% %   Feature Extraction
% seq=unique(data(:,19));
% for k=1:length(seq)
%     %   seq(k)
    index=(1:size(data,1))';
% %     userID=unique(data(index,20));
% %     labelID=unique(data(index,19));
%     if(~isempty(index))
%         JthWin=0;
        while(~isempty(index))
            if(length(index)>=sizeWin)%   data left is more than a window
%                 JthWin=JthWin+1;
                indexWin=index(1:sizeWin);
                index=index(ceil(sizeWin*sizeStep)+1:end);
%                 
%                 %   data in a window 
                dataWinComb=data(indexWin,:);
%                 time1 = dataWin(1,2);
%                 time2 = dataWin(sizeWin,2);
%                 %   combine 3 axis to 1 axis
%                     %   dataWinComb: NO*4, accWaist, gyroWaist, accWrist,gyroWrist
%                 dataWinComb=[sqrt(dataWin(:,5).^2+dataWin(:,6).^2+dataWin(:,7).^2),...
%                              sqrt(dataWin(:,8).^2+dataWin(:,9).^2+dataWin(:,10).^2),...
%                              sqrt(dataWin(:,13).^2+dataWin(:,14).^2+dataWin(:,15).^2),...
%                              sqrt(dataWin(:,16).^2+dataWin(:,17).^2+dataWin(:,18).^2)
%                              ];
                
               %   Time Domain Featues&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
               valueMEAN=mean(dataWinComb);
               valueSTD=std(dataWinComb);
               valueMIN=min(dataWinComb);
               valueMAX=max(dataWinComb);
               valueMode=mode(dataWinComb);
               valueRange=valueMAX-valueMIN;
               %   mean cross rate
               cross_time=zeros(size(dataWinComb,2),1);
               for i=1:size(dataWinComb,2)
                    cross_time(i)=MeanCrossingRate(dataWinComb(:,i));%  1*4
               end
               %   Time Domain Featues&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
               %   Frequency Domain Features#########################
               %   fft  
               dataWinCombFFT=abs(fft(dataWinComb));%  NO*4
               %   DC component
               dc=dataWinCombFFT(1,:);%    1*4
               
               NUM=5;
               peakValue=zeros(NUM, size(dataWinCombFFT,2));
               peakPosition=zeros(NUM, size(dataWinCombFFT,2));
               for i=1:size(dataWinCombFFT,2)
                   [valueS, indexS]=sort(dataWinCombFFT(2:end,i));
                   peakValue(:,i)=valueS(end-NUM+1:end);
                   peakPosition(:,i)=indexS(end-NUM+1:end)+1;
               end
               
%                peakPosition=max(dataWinCombFFT(2:end,:));
               %   energy
               energy=mean(dataWinCombFFT(2:end,:).^2);%    1*4
               shape_mean=zeros(size(dataWinComb,2),1);
               shape_sd=zeros(size(dataWinComb,2),1);
               shape_skew=zeros(size(dataWinComb,2),1);
               shape_kurt=zeros(size(dataWinComb,2),1);
               amp_mean=zeros(size(dataWinComb,2),1);
               amp_sd=zeros(size(dataWinComb,2),1);
               amp_skew=zeros(size(dataWinComb,2),1);
               amp_kurt=zeros(size(dataWinComb,2),1);
               for i=1:size(dataWinComb,2)
                        %   shape & amp features
                    [shape_mean(i),shape_sd(i),shape_skew(i),shape_kurt(i),amp_mean(i),amp_sd(i),amp_skew(i),amp_kurt(i)]=...
                            ShapeAndAmpFeatures2(dataWinCombFFT(:,i));
               end
               %   Frequency Domain Features#########################
               dataWinFE=[];
               for i=1:length(valueMEAN)
                    dataWinFE=[dataWinFE,...
                               valueMEAN(i),valueSTD(i),valueMIN(i),valueMAX(i),valueMode(i),valueRange(i),cross_time(i),...
                               dc(i), peakValue(:,i)', peakPosition(:,i)',energy(i),...
                               shape_mean(i),shape_sd(i),shape_skew(i),shape_kurt(i),...
                               amp_mean(i),amp_sd(i),amp_skew(i),amp_kurt(i),...
                               ];
               end
%                dataWinFE=[dataWinFE,JthWin,seq(k),time1,time2];
               dataFE=[dataFE;dataWinFE];
            else
                index=[];
            end
        end
%     end
% end
