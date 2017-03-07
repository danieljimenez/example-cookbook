require 'gibberish'
require 'aws-sdk'

cipher = Gibberish::AES::CBC.new('this is my key')

greeting = cipher.encrypt('hi there')
farewell = cipher.encrypt('bye now!')


file 'hi' do
  content greeting
end

file 'bye' do
  content farewell
end