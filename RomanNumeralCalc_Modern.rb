def convertToRomanNumeral number
  if( number < 1 or number > 3000)
    puts 'Number must be between 1 and 3000'
    return
  end
  
  myNumeralArray = []
  
  #establish number of 1000's
  thousands = number / 1000
  number = number % 1000
  #establish number of 100's
  hundreds = number / 100
  number = number % 100
  #establish number of 10's
  tens = number / 10
  number = number % 10
  ones = number
    
  #thousands calculation
  myNumeralArray.push 'M'*(thousands)
  
  #hundreds calculation
  if( hundreds == 9 or hundreds == 4)
    myNumeralArray.push 'C'
    if( hundreds == 9 )
      myNumeralArray.push 'M'
    else
      myNumeralArray.push 'D'
    end
  elsif( hundreds < 5 )
    myNumeralArray.push 'C'*hundreds
  else
    myNumeralArray.push 'D' + 'C'*(hundreds-5)
  end
  
  #tens calc
  if( tens == 9 or tens == 4)
    myNumeralArray.push 'X'
    if( tens == 9 )
      myNumeralArray.push 'C'
    else
      myNumeralArray.push 'L'
    end
  elsif( tens < 5 ) 
    myNumeralArray.push 'X'*tens
  else
    myNumeralArray.push 'L' + 'X'*(tens-5)
  end
  
  #ones calc
  if( ones == 9 or ones == 4)
    myNumeralArray.push 'I'
    if( ones == 9 )
      myNumeralArray.push 'X'
    else
      myNumeralArray.push 'V'
    end
  elsif( ones < 5 ) 
    myNumeralArray.push 'I'*ones
  else
    myNumeralArray.push 'V' + 'I'*(ones-5)
  end
  
  puts myNumeralArray.join('')
  
end

convertToRomanNumeral 2900
convertToRomanNumeral 2999
