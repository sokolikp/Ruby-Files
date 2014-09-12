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
  myNumeralArray.push 'M'*thousands
  
  #hundreds calculation
  if( hundreds < 5 )
    myNumeralArray.push 'C'*hundreds
  else
    myNumeralArray.push 'D' + 'C'*(hundreds-5)
  end
  
  #tens calculation
  if( tens < 5 )
    myNumeralArray.push 'X'*tens
  else
    myNumeralArray.push 'L' + 'X'*(tens-5)
  end
  
  #ones calculation
  if( ones < 5 )
    myNumeralArray.push 'I'*ones
  else
    myNumeralArray.push 'V' + 'I'*(ones-5)
  end
  
  puts myNumeralArray.join('')
  
end

convertToRomanNumeral 2664
