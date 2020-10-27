# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value


#iterate over the has and return the key that points to the smallest value
# if method is called and passed an empty hash return nil
# after first iteration, if lower, redefine vari to key

def key_for_min_value(name_hash)
    if name_hash.empty?
        return nil # if hash is empty return nil
    end
    min = 0 # set minimum for values to be compared to
    smallest = "" # create new vari for the keys we need 
    name_hash.each do |key, value| # iterate through each (don't want to modify)
        if min == 0  # min equals 0
            min = value # min is assigned the value
            smallest = key # now reassign vari "smallest" to return the key that matches
        elsif value < min # otherwise, if value if greater than the min
            min = value # assign min to the value
            smallest = key # now ressign the vari "smallest" to the key that matches 
        end
    end
    return smallest # return the new vari "smallest"
end