require 'yaml'
require 'date'

class Visitors

    attr_accessor :library

    def initialize
        @library = YAML.load_file('./lib/library.yaml')
    end

    def borrow_book
        library = YAML.load_file('./lib/library.yaml')
        library[0][:available] = false
        library[0][return_date] = Date.today>>1
        File.open('./lib/library.yaml', 'w') { |file| file.write library.to_yaml }
    end

    def return_book 
        library = YAML.load_file('./lib/library.yaml')
        library[0][:available] = true
        File.open('./lib/library.yaml', 'w') { |file| file.write library.to_yaml }
    end

end



# class Book 
#     attr_accessor :title, :author, :available, :return_date

#     require 'date'

#     def initialize(attrs = {})
#         @title = title
#         @author = author
#         @available = true
#         @return_date = '31/11'
#     end

#     def check_out(title)
#         if is_available?(available, return_date)
#             { status: false, message: 'book not available', date: return_date }
#         else
#             check_out_book(available, return_date)
#         end
#     end
# end
