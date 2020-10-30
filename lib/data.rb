require 'yaml'

# kod jag såg på youtube
book_list = YAML.load(File.open(File.join(File.dirname(__FILE__),'library.yaml')))

#alternativt 
# book_list2 = YAML.load_file('library.yaml')

puts book_list
# test för att se om book_list funkar, hittills funkar ingen  
# error meddelande lib/library.yaml:2: syntax error, unexpected ':', expecting end-of-input :item: