def ask question

    while true
      puts question
      reply = gets.chomp.downcase
      
      if(reply == 'yes')
        return true
      elsif(reply == 'no')
        return false
      else
        puts 'Please answer "yes" or "no".'
      end
    end
end

ask 'Do you like playing guitar?'
ask 'Do you like the banjo?'
ask 'Are you SERIOUS!?'
myVar = ask 'Do you ever sniff leather?'
