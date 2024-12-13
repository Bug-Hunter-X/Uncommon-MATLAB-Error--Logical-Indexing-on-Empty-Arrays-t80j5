function result = myFunction(input)
% This function demonstrates an uncommon MATLAB error related to logical indexing with empty arrays.

if isempty(input)
  result = []; % Handle the empty input case
  return;
end

% Some operations on the input
processedInput = input.^2;

% This is where the potential issue arises: logical indexing on an empty array.
% If the condition is never met, logical indexing on an empty array is not handled correctly.
indices = processedInput > 10;

result = processedInput(indices);
end

% Example usage demonstrating the error
input1 = [1, 2, 3, 4, 5];
input2 = [];
result1 = myFunction(input1);  %Correct
result2 = myFunction(input2);  %Error if the logical indexing is done before checking empty array
