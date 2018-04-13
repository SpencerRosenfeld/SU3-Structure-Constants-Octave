# These are the three tau matrices. The third index labels the matrix. 
tau = zeros(2,2,3);

tau(:,:,1) = [[0,1];[1,0]]; 
tau(:,:,2) = [[0,-I];[I,0]]; 
tau(:,:,3) = [[1,0];[0,-1]]; 

# These are the eight Gellman Matrices. The third index labes the matrix. 
lambda = zeros(3,3,8);

for i=1:3 
  lambda(:,:,i) = [[tau(:,:,i) , zeros(2,1)];zeros(1,3)];
end

M1 = [[0,0,2];[0,0,0];[0,0,0]]; 

lambda(:,:,4) = (M1+M1')/2; 

lambda(:,:,5) = (M1-M1')/(2*I);

M2 = [[0,0,0];[0,0,2];[0,0,0]];

lambda(:,:,6) = (M2+M2')/2; 

lambda(:,:,7) = (M2-M2')/(2*I); 

lambda(:,:,8) = [[1,0,0];[0,1,0];[0,0,-2]] / sqrt(3);

T = lambda / 2; 
