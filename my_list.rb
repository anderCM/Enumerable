module MyEnumerable 
    def all? 
        each { |item| return false unless yield(item) }
        true
    end

    def any? 
        each { |item| return true if yield(item) }
        false
    end

    def filter 
        
    end

end 

class myList
    def initialize (list)
        @list = list
    end

    def each
        @list.each { |item| yield item }
    end
end


newList = myList.new(1,2,3,4)


