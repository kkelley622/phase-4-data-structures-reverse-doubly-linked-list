require_relative './node'

class LinkedList
  attr_accessor :head, :tail, :length 

  def initialize
    @head = nil
    @tail = nil
    @length = 0 
  end

  def reverse!
    # your code here
    return if self.length < 2
    current = self.head 
    new_head = nil 

    while(current != nil)
      new_head = current.prev_node 
      current.prev_node = current.next_node
      current.next_node = new_head 
      current = current.prev_node 
    end
    self.tail = self.head 
    self.head = new_head.prev_node 
  end
  
end


