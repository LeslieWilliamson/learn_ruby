class ToDoList

    include Enumerable

    attr_accessor :items

    def initialize(items=[])
        @items = items
    end
    
    #required to use Enumerable as a mixin
    def each 
        @items.each {|item| yield (item) }
    end 
    
    # add to front of the list (not the back)
    def <<(item)
        items.prepend item
    end    
end