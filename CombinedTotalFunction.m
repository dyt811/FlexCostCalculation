function Price = CombinedTotalFunction(Time,Distance)
Z = CommunAutoCost(Time,Distance);
Z1 = AutoMobileCost(Time,Distance);

if <

Price = min(Z, Z1);   

return

end
