class Fibonacci

  def call(env)
    match = env['REQUEST_PATH'].match(/\/(\d*)/)[1]
    if match.length > 0
      now = Time.now
      body = fibonacci(match.to_i).to_s
      puts "Request #{env['REQUEST_PATH']} took #{Time.now - now} seconds to complete"
      [200, {}, [body]]
    else
      [200, {}, ["Enter a number to calculate the fibonacci number for, ie. (/10 ==> 55)"]]
    end
  end

  def fibonacci(n)
    return n if (0..1).include?(n)
    fibonacci(n - 1) + fibonacci(n - 2)
  end

end

run Fibonacci.new
