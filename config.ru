# this is the rackup file. it is a configuration file that specifies what to run an how to run it. It uses the extension `.ru`
# the application that we use must respond to the the method `call(env)` which takes the environment variable as an argument.
# the call method must return an array with 3 elements. [status code as string or other object that responds to `to_i`| headers as key value pairs in a hash | response body that is an object that responds to an `each` method. Can't just be a string, has to yield a string value.]

require_relative 'app'
run App.new

# in one terminal run `bundle exec rackup config.ru -p 8080`
# in another terminal run `curl -X GET localhost:8080/ -m 30` or some variant path
# or you can click on the link when you run the bundle command that starts the server to access it using the browser. Then you can type the path on the end of the webpage.