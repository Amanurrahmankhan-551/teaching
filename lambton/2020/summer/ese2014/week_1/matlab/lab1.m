%%
% introduction to Matlab
%
% ESE2014
%
% instructor: Takis Zourntos
%

%% Lab Manual Week 1

% 1. create a vector:
    
    % here is a row vector:
    x_row = [1 2 3 4 5];
    
    % here is a column vector:
    x_col = [1; 2; 3; 4; 5];
    
    % create vectors using:
    %    ones()
    %    zeros()
    %    rand()
    %    randn()
    %
    %    use "help <function>" at the prompt to learn more
    %    about any of these!
    %
    
    x_ones = ones(6,1); % column vector of ones
    x_zeros = zeros(1,7); % row vector of zeros
    x_rand = rand(1,8); % uniformly-distributed pseudorandom row vector of ones
    x_randn = rand(5,1); % normally-distributed pseudorandom column vector of ones
    
% 2. create a matrix:

    % note: a vector is also a matrix, nevertheless, we get what the 
    %       question means (i.e., more than 1 row or column!)
    
    A_23 = [1 2 3; 4 5 6]; % a 2x3 matrix
    A_32 = [1 2; 3 4; 5 6]; % a 3x2 matrix
    A_33 = rand(3,3); % a random (square) 3x3 matrix
    A_zeros = zeros(5,6); % a 5 x 6 matrix of zeros
    A_ones = ones(4,3); % a 4 x 3 matrix of ones
    A_identity = eye(4); % the 4x4 Identity Matrix
    
% 3. create a 5x1 vector of zeros and a 1x5 vector of random numbers:

    v_51_z = zeros(5,1);
    v_15_r = rand(1,5);
    
% 4. transpose a matrix:
    A_32_tc = A_32'; % take the complex-conjugate transpose
    A_32_t = transpose(A_32); % perform the transpose without complex conjugation
    A_32_t2 = A_32.'; % same as using transpose() function
    
% 5. compute the inner product of two vectors, the cross product of two
% vectors and find the inverse of a matrix:
    p_dot = dot(x_col, v_15_r'); % take the dot product of x_col and v_15_r'
    p_cross = cross(A_23(1,:), A_23(2,:)); % take the cross product between the two rows of A_23
    A_33_inverse = inv(A_33); % get inverse of A_33;
    P_identity = A_33*A_33_inverse; % check that this is close to identity
    A_error = eye(3) - P_identity;
    err=norm(A_error); % quantify the error
    
% 6. compute the element-wise multiplication of a matrix and a scalar:
    alpha = 0.678432; % a scalar quantity
    A_scaled = alpha*A_33; % simple asterisk does the scalar multiplication
    
% 7. concatenate two matrices:
    A_35 = [A_33  A_32]; % side-by-side concatenation
    A_53 = [A_33; A_23]; % top-bottom concatenation
    
% 8. create a vector of complex numbers:
    v_cmplx_61 = rand(6,1) + j*rand(6,1); % engineers use "j" not "i" for sqrt(-1) !!
    
% 9. multiply a row of a matrix with an element of that same matrix:
    v_9 = A_33(3,3)*A_33(2,:);
    
% 10. generate a vector of values ranging from 0 t0 500 with 100 elements
    vrange_500 = linspace(0, 500, 100); % a linear range
    vrange_alt = 0:5:500; % another way (but it has 101 elements)
    vrange_alt_2 = 0:(500/99):500; % this is equivalent to vrange_500
    
% 11. Create a 2D plot of the sine function between 0 and 2\pi

    

    
    