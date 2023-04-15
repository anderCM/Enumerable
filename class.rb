require_relative './module'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

new_list = MyList.new([1, 2, 3, 4])
puts(new_list.all? { |e| e < 5 })
puts(new_list.all? { |e| e > 5 })
puts(new_list.any? { |e| e == 2 })
puts(new_list.any? { |e| e == 5 })
print new_list.filter(&:even?)
