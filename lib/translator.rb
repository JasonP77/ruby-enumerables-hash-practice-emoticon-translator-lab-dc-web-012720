# require modules here
require "yaml"
def load_library(file_path)
  library = YAML.load_file(file_path)
  result = {"mean" => {}, "emoticon" => {}}
  library.each do |meaning, emoticons|
    result["mean"][emoticons[1]] = meaning
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