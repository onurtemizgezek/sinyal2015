function [frekans]=frek(nota,oktav,oktavdegeri)%frekans döndürmektedir.

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notolardan oluşan bir dizi yazdık.
n=strcmp(notalar,nota); %Dizenin içine aktarı,indekside 1 artırır.
m=find(n,1);%n dizisinde 1 değerinin indeksini döndürür.
    if (nargin==0)
disp ('veri girişi yapınız');
        elseif (nargin==1)
 
            if (m==13)
               frekans=0;
            else
                
              
        frekans=16.35*(2^(4+oktavdegeri))*(2^((m-1)/12));%frekans fonksiyonu oluşturuldu.
       end
    
    elseif (nargin==2)
       
          if (m==13)
               frekans=0;
        else
            frekans=16.35*(2^(oktav))*(2^((m-1)/12)); %frekans fonksiyonu oluşturuldu.
          end
    else
        if (m==13)
               frekans=0;
        else
            frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); %frekans fonksiyonu oluşturuldu.
          end


    end

end 
