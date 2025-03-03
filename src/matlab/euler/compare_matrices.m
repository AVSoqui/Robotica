function isEqual = compare_matrices(A, B, tol)
    % Compare two matrices element-wise with a given tolerance
    if nargin < 3
        tol = 1e-6; % Default tolerance if not provided
    end
    % Check if dimensions match
    if ~isequal(size(A), size(B))
        isEqual = false;
        return;
    end
    % Compare with tolerance
    isEqual = all(abs(A - B) < tol, 'all');
end
