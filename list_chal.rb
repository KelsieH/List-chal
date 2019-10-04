def threed(ints)
    count = 0

    (ints.size - 1).times do |i|
        slice = ints[i..(i+1)]
        if slice == [3,3]
            return false
        end
        if ints[i] == 3
            count += 1
        end
        if count == 3
            return true 
        end
    end
    return false
end

# puts threed([1, 2, 3, 4, 3, 5, 3, 6]) #true
# puts threed([3, 4, 3, 3, 5, 6]) # false
# puts threed([1, 2, 3, 4, 3, 5, 6, 7]) #false

def same_first_last(ints)
    if ints.size < 0
        return false
    end
    if ints[0] == ints[ints.size - 1]
        return true
    end
    return false
end

# puts same_first_last([1, 2, 3, 1]) #true
# puts same_first_last([1, 2, 3]) #false
# puts same_first_last([]) #false


def get_sandwich(string)
    bread_positions = []
    (string.size - 4).times do |i|
        slice = string[i..(i+4)]
        if slice == "bread"
            bread_positions.push[i]
        end
    end
    if bread_positions.size >= 2
        pos1 = bread_positions[0] + 5
        pos2 = bread_positions[1] - 1
        return string[pos1..pos2]
    else
        puts "get more bread!"
    end
end

puts get_sandwich("breadjambread") #JAM
# puts get_sandwich("breadsausageandmayobread") #Sausageandmayo
# puts get_sandwich("breadgrape") #""

def shift_left(ints)
    newlist = []
    newlist.push(ints[1])
    ints.size.times do |i|
        if i != i[0]
            newlist.push(ints[i])
        end
    end
    newlist.push(ints[0])
end

# puts shift_left([5, 4, 3, 2, 1])
# newlist.push(ints[0])

def can_balance(ints)
    div = ints.size / 2
    if ints.size == 0
        return false
    else
        ints.size.times do |i|
          slice = string[i..i[div]]
        end
    end
    puts slice
end

def can_balance([1, 2, 3, 4, 4, 3, 2, 1])