run matrix_definitions

normalization = zeros(8,8); 

for a=1:8 
  for b=1:8 
    printf("Tr( T_%i T_%i ) = %f\n", a,b,inner_product( lambda(:,:,a) /2 , lambda(:,:,b) /2));
    normalization(a,b) = inner_product( lambda(:,:,a) /2 , lambda(:,:,b) /2 );
  end 
end

if( abs(normalization - eye(8)/2) < 1e-15 ) 
  printf("The condition Tr(T_a T_b) = delta_ab / 2 is satisfied."); 
else 
  printf("The condition Tr(T_a T_b) = delta_ab / 2 is not satisfied.");
end 






