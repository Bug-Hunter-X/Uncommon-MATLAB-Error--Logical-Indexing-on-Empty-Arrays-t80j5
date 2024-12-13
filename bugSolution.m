function result = myFunctionImproved(input)
% This improved function handles the case of an empty input array correctly.

if isempty(input)
  result = []; % Explicitly handle the empty input case
  return; % Return early to avoid further operations on the empty array
end

processedInput = input.^2;
indices = processedInput > 10;
result = processedInput(indices);
end

% Example usage demonstrating the corrected behavior:
input1 = [1, 2, 3, 4, 5];
input2 = [];
result1 = myFunctionImproved(input1);
result2 = myFunctionImproved(input2); % Now works correctly
