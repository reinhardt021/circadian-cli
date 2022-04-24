class Task
  attr_accessor :hours, :minutes, :seconds

  def initialize(hours, minutes, seconds)
    @hours = hours
    @minutes = minutes
    @seconds = seconds
  end
  
  def add_padding(time)
    if time < 10
      "0#{time}"
    else
      time
    end
  end

  def to_s
    "#{add_padding(@hours)}:#{add_padding(@minutes)}:#{add_padding(@seconds)}"
  end
end

class Circadian
  def initialize
    @prompt = 'Circadian interface online...'
    @task = Task.new(0, 1, 29)
  end

  def run
    puts @prompt

    puts '00:00:00> testing ...'
    sleep 1
    $stdout.print("\033[1A")
    puts "#{@task}> does this work???"
    #$stdout.print("one more time. ...")
    #$stdout.flush

    #$stdout.puts($stdin.gets.inspect)

    #get_user_input = true
    #while (get_user_input)
      #user_input = gets.chomp
      #sys.stdout.flush()
      #sys.stdout.write "\rthe user input is: #{user_input}" 
      #if user_input == 'start'
        #puts '5:00'
      #end

       #how can I replace the top line
       #then have the second line as the user input just in case

      #if user_input == 'exit'
        #puts 'Goodbye :)'
        #get_user_input = false
      #end
    #end

  end
end

circadian = Circadian.new
circadian.run
