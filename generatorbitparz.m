
function y = generator(n)
y = round(rand(m, k))
   x=sum(y')' 
   for i=1:m,
   z = mod(x(i,:),2);
   y(i,k+1)=z; 
   
   end
endfunction