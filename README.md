
create required files & provide required permissions

touch /tmp/example2.txt
chmod 600 /tmp/example2.txt
echo "Buzz Fizz" > /tmp/example3.txt

Make changes in .env file with server credentials & excecute above commands.

# options = Net::SSH::Config.for(host).merge(user: ENV['LOGIN_USERNAME']).merge(port: ENV['PORT']).merge(password: ENV['PASS_WORD'])
Uncomment the above line available in spec/spec_helper.rb
