fib-cpu
=======

To launch in single-core mode, simply cf push with the default start command. 

To use unicorn and take advantage of up to 4 cores, push with start command 'bundle exec unicorn -c unicorn.rb -p $PORT'
