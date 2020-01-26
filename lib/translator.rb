# require modules here
require "yaml"
def load_library(file_path)
  collection = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  collection.each do |means, emoticons|
    result["get_meaning"][emoticons[1]] = means
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  if lirbary["get_emoticon"].include?(emoticon)
    library["get_emoticon"][emoticon]
  end
end

def get_english_meaning
  # code goes here
end