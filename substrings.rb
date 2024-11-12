# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

#   > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }
# Next, make sure your method can handle multiple words:

#   > substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
# Please note the order of your keys might be different.

# Quick Tips:

# Recall how to turn strings into arrays and arrays into strings.

def substrings(word, array)
  hash = {}
  substring_array = []
  # Write code to split the 'word' into an array of each individual words
  multi_word_array = word.downcase.split(' ')
  multi_word_array
  # Use the original logic to deal with each individual word from above
  multi_word_array.each do |single_word| # For each single word within the multi word array, 
  p  single_word_array = word.downcase.chars.select {|element| element != " " && element != "'" && element != "?" && element != "." && element != "!" && element != ","} # Convert the word into downcase, split the word into an array of its letters
    single_word_array.each do |char| # For each letter in the single word array 
      char_index = single_word_array.index {|element| element == char } # This is the character index
      char_index
      sub_word_str = single_word_array[0..char_index].join # Join the letters from 0 until the character index to create a substring to test
      reverse_sub_word_str = single_word_array[char_index..-1].join # Join the letters from the character index until the last index to create a reverse substring to test
      substring_array.push(sub_word_str).push(reverse_sub_word_str) # Push the sub word string and the reverse sub word string to the substring array
      substring_array
    end
    substring_array.each do |substring| # For each substring in the substring array
      array.include?(substring) # Check if the array includes the substring
       count = array.count(substring) # Create a count variable that tallies the occurences of the substring in the array 
      if count > 0 # If the count is greater than 0
         hash[substring] = count # assign the hash[substring] to equal the count 
      end
    end
  end
  return hash # return the hash
end

  # Declare an empty hash
  # Turn the word into an array & store in a variable 
  # Iterate over the array to
    # 1. Return every possible substring by joining each element one by one per iteration
    # 2. Iterate over the array to check if it includes any of the substrings
    # 3. If the word is included, start a tally usind #count for how many times it is included in the array
        # store the tally in a variable count
    # 4. Assign hash[:word][:count]
  # Return the hash