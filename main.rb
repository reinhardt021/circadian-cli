class Task
  attr_accessor :hours, :minutes, :seconds

  def initialize(hours, minutes, seconds)
    @hours = hours
    @minutes = minutes
    @seconds = seconds
  end
  
  def add_padding(time)
    time < 10 ? "0#{time}" : time 
  end

  def to_s
    "#{add_padding(@hours)}:#{add_padding(@minutes)}:#{add_padding(@seconds)}"
  end
end

class Circadian
  def initialize
    @prompt = 'Circadian interface online...'
    @task = Task.new(0, 1, 0)
  end

  def log(task)
    $stdout.print("\033[1A") # move cursor one line up
    $stdout.print("\033[K") # delete til end of line
    #puts '00:00:00> '
    $stdout.print("#{task}> ")
    #$stdout.puts("#{message}")
    #puts "#{task}> #{message}"
  end

  def run
    puts @prompt
    log(@task)
    puts "Let's get started"
    sleep 1
    log(@task)
    #log(@task, "")

    get_user_input = true
    while (get_user_input)
      #user_input = "somethign"
      user_input = gets.chomp
      #sys.stdout.write "\rthe user input is: #{user_input}" 
      if user_input == 'start'
        log(@task)
        #puts '5:00'
        #log(@task, "starting now ... ")
        # start countdown sequence and output
      else
        log(@task)
      end
       #how can I replace the top line
       #then have the second line as the user input just in case

      if user_input == 'exit'
        puts 'Goodbye :)'
        get_user_input = false
      end
    end

  end
end

circadian = Circadian.new
circadian.run
