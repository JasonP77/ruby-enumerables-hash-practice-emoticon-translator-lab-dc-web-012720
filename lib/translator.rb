# require modules here
require "yaml"
def load_library(file_path)
  collection = YAML.load_file(file_path)
  result = {"meaning_of_emoticon" => {}, "emoticon" => {}}
  collection.each do |means, emoticons|
    result["meaning_of_emoticon"][emoticons[1]] = means
    result["emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end