require 'yaml'

# kod jag såg på youtube
library = YAML.load(File.load_file('./lib/library.yaml'))

class Book 
    attr_accessor :title, :author, :available, :return_date

    require 'date'

    def initialize(attrs = {})
        @title = title
        @author = author
        @available = true
        @return_date = '31/11'
    end

    def check_out(title)
        if is_available?(available, return_date)
            { status: false, message: 'book not available', date: return_date }
        else
            check_out_book(available, return_date)
        end
    end


end



#alternativt 
# book_list2 = YAML.load_file('library.yaml')

puts book_list
# test för att se om book_list funkar, hittills funkar ingen  
# error meddelande lib/library.yaml:2: syntax error, unexpected ':', expecting end-of-input :item: