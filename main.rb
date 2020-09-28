def anagram(s)
  if s.length % 2 == 0
    first,second = s.partition(/.{#{s.size/2}}/)[1,2]
    first = first.split("")
    second = second.split("")
    first.each_with_index do |el, index|
      second.each_with_index do |i, index2|
        if el == i 
          first[index] = "#"
          second[index2] = "#"
          break
        end
      end
    end    
   result = first.length - first.count("#")
  else 
    result =  -1
  end
   p result
end

anagram("abasdasfsadsadsfassdabbbbbbbbbbbbbbbbsaddddddddddasdasdasdasdsafsavasdasadavasdsadasdvabbbfsafadsadasfasdasdasfafasf")