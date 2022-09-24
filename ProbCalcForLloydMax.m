% ===================PDF Calculation for LloydMax Quantizer================
% Last Update Date: 26/08/2020
% Last Test Date: 24/08/2020
% Author: Vadim Yagudaev
% CME Program Fridrich Alexander University Of Erlangen Nuremberg
% Master Thesis
% =========================================================================
function Output= ProbCalcForLloydMax(Signal)

B=sort(Signal);
Output=zeros(2,(max(B)-min(B))+1);

    Output(2,:)=min(B):max(B);


Coun=1;

for i=1:length(B)
    if i==1
        axis(1,Coun)=1;
        axis(2,Coun)=B(i);

    elseif i>1
        if B(i)==B(i-1)
            axis(1,Coun)=axis(1,Coun)+1;
            axis(2,Coun)=B(i); 
          elseif B(i)~=B(i-1)
             Coun=Coun+1;
            axis(1,Coun)=1;
            axis(2,Coun)=B(i);
      
        end
    end
end
axis(1,:)=axis(1,:)/length(B);


 cnt=1;
  for j=1:length(Output(2,:))
      if Output(2,j)==axis(2,cnt)
        Output(1,j)=axis(1,cnt);
        cnt=cnt+1;
        if cnt>length(axis(1,:))
            break;
        end
      end
    end


end