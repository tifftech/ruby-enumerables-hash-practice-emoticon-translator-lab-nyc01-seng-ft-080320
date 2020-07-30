def load_library(path)
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(path).each do |meaning, describe|
    eng, jan = describe
    emoticons["get_meaning"][jan] = meaning
     emoticons["get_emoticon"][eng] = jan
   end