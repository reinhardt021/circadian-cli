def main
  #@prompt = 'Circadian interface online:...'
  #puts @prompt

  #sys.stdout.write('\r$ ...')

  puts 'testing ...'
  sleep 1
  $stdout.print("\033[1A")
  puts 'does this work???'
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

main
