# require modules here
require "yaml"
def load_library(file)
  collection = YAML.load_file(file)
  final = {"mean" => {}, "emoticons" => {}}
  library.each do |meaning, emoticons|
    result["mean"][emoticons[1]] = meaning
    result["emoticons"][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end