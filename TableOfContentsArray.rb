line_width = 70

tableOfContentsArray = []

#add table contents to array
tableOfContentsArray.push ('Table of Contents')
tableOfContentsArray.push ('Chapter 1: Getting Started') 
tableOfContentsArray.push ('Page 1')
tableOfContentsArray.push ('Chapter 2: Numbers') 
tableOfContentsArray.push ('Page 7')
tableOfContentsArray.push ('Chapter 3: Letters')
tableOfContentsArray.push ('Page 27')

tableOfContentsArray = tableOfContentsArray.reverse
#puts tableOfContentsArray.reverse

puts tableOfContentsArray[tableOfContentsArray.length-1].center(line_width)
tableOfContentsArray.pop
while tableOfContentsArray.length > 0
  contentLineLeft = tableOfContentsArray.pop
  contentLineRight = tableOfContentsArray.pop
  puts contentLineLeft.ljust(line_width/2) + 
       contentLineRight.rjust(line_width/2)
end
