function Price = CommunAutoCost(Time,Distance)
   
Price = 0;

    Hours = floor(Time/60)+4;
    Price = Price + Hours * 2.2;
    
    Minutes = mod(Time,60);    
    Quarters = floor(Minutes/15);   

    Left = mod(Minutes,15);
    if (Left > 7)
        Quarters = Quarters +1;
    end
    
    Price = Price + Quarters * 2.20/4;
    
    
    Round = mod(Minutes,15);
    Price = Price + Distance * 0.24;
     
    return    
end
