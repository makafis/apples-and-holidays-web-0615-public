def apple_picker_with_select(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just has apples in it
  #   let(:fruits)   { ["apple", "orange", "apple"] }
  # let(:smoothie) { ["carrot", "apple", "pepper", "cucumber", "apple", "apple"] }
  # let(:veggies)  { ["pepper", "carrot", "cucumber"] }


    return_array = []
    fruit_list.select do |value|
        if value == "apple"
            return_array << value
        end
    end





end

def apple_picker_with_collect(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just the apples, just like the 
  # challenge above

   x = fruit_list.collect do |value|
          if value == "apple"
              value
          end
            
        
      end 
       x.compact

end