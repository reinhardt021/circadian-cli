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

  def log(task, message)
    #puts '00:00:00> '
    $stdout.print("\033[1A")
    #$stdout.print("\033[2J") # clears the whole thing
    #$stdout.print("\033[K")
    $stdout.print("\033[2K")
    $stdout.puts("#{task}> #{message}")
    #puts "#{task}> #{message}"
  end

  def run
    puts @prompt

    #puts "#{@task}> Let's get started"
    log(@task, "Let's get started")
    sleep 1
    #print "#{@task}> "
    log(@task, "")

    get_user_input = true
    while (get_user_input)
      #user_input = "somethign"
      user_input = gets.chomp
      #sys.stdout.write "\rthe user input is: #{user_input}" 
      if user_input == 'start'
        #puts '5:00'
        log(@task, "starting now ... ")
        # start countdown sequence and output
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
