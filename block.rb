5.times{ puts "Exec the block"}

sum = 0
numbers = [5,10,5]
numbers.each { |number| sum += number}
puts sum


foo = {2 => 3,4 => 5}
foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts "---"
end

def foo 
    # call the block
    yield
    yield
end

foo{ puts "Exec the block"}


def foo
    if block_given?
        # call the block
        yield
    else
        puts "Sem parâmetro do tipo bloco"
    end
end

foo 
foo{ puts "com parametro do tipo bloco" }


