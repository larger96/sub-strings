=begin
Implement a method #substrings that takes a word as the first 
argument and then an array of valid substrings (your dictionary) 
as the second argument.  
It should return a hash listing each substring that was found 
in the original string and how many times it was found.
    
Create a dictionary of substrings.
Create an empty hash to store results.
For each substring check if substring is in string.
If substring is in string
  Scan string for occurences of substring
  Find the size of resulting scan array
  Store the size as a value in the empty hash
Return results hash.
=end

def substrings(string, dictionary)
  results = {}
  dictionary.each do |str|
    if string.include?(str)
      results[str] = string.scan(str).size
    end
  end
  puts results
end

dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)