function r1 = find_peak_indices(y, ind)
    n = length(ind);
    r1 = [];
    
    for i = 1:n
        if i == 1 && y(ind(i)) > y(ind(i+1))
            r1 = [r1, ind(i)];
        elseif i == n && y(ind(i)) > y(ind(i-1))
            r1 = [r1, ind(i)];
        elseif i > 1 && i < n && y(ind(i)) > y(ind(i+1)) && y(ind(i)) > y(ind(i-1))
            r1 = [r1, ind(i)];
        end
    end
end

