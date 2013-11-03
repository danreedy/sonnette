require 'serialport'
require 'boxcar_api'

sp = SerialPort.new("/dev/tty.usbmodem1411",9600,8,1,SerialPort::NONE)
provider = BoxcarAPI::Provider.new('KND5KSy6HJ7DYMd9KxZk','XsNgtxVZ0boKo7jJORNMBDPg62Yjg1qqgGHjP1Zt')

puts "Sonnette ~ A silly example of how to make an Arduino powered doorbell\n"
puts '---'*3
puts 'Go head, ring the bell.'

while true do
  while (i = sp.gets.chomp) do
    if i.eql?('1')
      saying = 'Ding Dong!'
      provider.broadcast saying
      puts saying
      system("say '#{saying}'")
    end
  end
end
sp.close
