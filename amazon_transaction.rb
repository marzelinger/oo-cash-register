# Code your cash register here!
class AmazonTransaction
    attr_accessor :total,:items,:discount
    def initialize(opdiscount=0)
        @total = 0
        @items = []
        @discount = opdiscount
    end
    
    def add_item(title,price, quantity = 1)
        @total+=(price*quantity)
        i = 0
        while i < quantity do
            @items.push(title)
            i+=1
        end
    end
    
    def apply_discount
        if @discount !=0
            @total -= @total*(@discount.to_f/100)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end
end
        