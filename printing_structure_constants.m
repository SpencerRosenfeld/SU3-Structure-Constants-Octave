for a=1:8
  for b=1:8
    for c=1:8
      if (a != 8 && b != 8 && c != 8 )
        printf("f_%i%i%i = %d\n",a,b,c,f(a,b,c));
      else 
        printf("f_%i%i%i = %f / sqrt(3)\n",a,b,c,f(a,b,c) * sqrt(3));
      end
    end 
   end  
end 