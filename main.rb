require 'sinatra'
#require 'sinatra\reloader'

require './lib/cipher'

#http://localhost:4567/?string=&offset=0



get '/' do
  string = params["string"]
  offset = params["offset"]
  if string != nil
    cipher = encode(string, offset)
  end
  erb :index, :locals => {:cipher => cipher}
end
