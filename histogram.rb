class Histogram < Hash
    attr_reader :array

    def initialize(array)
        @array = array
    end

    def to_histogram
        arr_key = array.uniq
        hash_arr = {}

        arr_key.each do |key|
            value = 0
            array.each do |element|
            hash_arr[key] = value
            if element == key
                value +=1
                hash_arr[key] = value 
            end
          end
        end
        hash_arr
    end
   puts a = Histogram.new(['orange', 'banana', 'banana', 'banana', 'lemon', 'lemon']).to_histogram
   
    
end