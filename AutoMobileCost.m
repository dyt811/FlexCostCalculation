function Price = AutoMobileCost(Time,Distance)

minutes_free = 30;
price_hourly = 12;
price_minute = 0.35;
minutes_threshold = price_hourly / price_minute;


Price = 0;

    if (Time < minutes_free)        
        return;
    end
    
    minutes_not_free = mod(Time - minutes_free, 60);
    hours_not_free = floor((Time-minutes_free)/60);
    
    if (minutes_not_free < minutes_threshold)
        Price = Price + minutes_not_free * price_minute;
    else 
        Price = Price + price_hourly;
    end
    
    Price = Price + hours_not_free * price_hourly;
    
    if (Price > 50) 
        Price = 50;
    end
    
    if (Distance > 100)        
        Price = Price + 0.2 * (Distance - 100); 
    end
        
    return    
end
