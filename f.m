function structure_constant = f (a,b,c) 
  run matrix_definitions;
  structure_constant = -2*I*inner_product( commutator( T(:,:,a) , T(:,:,b) )  , T(:,:,c) );
end 