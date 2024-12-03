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
  # Declare an empty hash
  hash = {}
  # Turn the word into an array & store in a variable 
 
  # Declare an empty hash
  # Turn the word into an array & store in a variable 
  # Iterate over the array to
    # 1. Return every possible substring using #partition method
    # 2. Iterate over the array to check if it includes any of the substrings #scan method
    # 3. If the word is included, start a tally usind #count for how many times it is included in the array
        # store the tally in a variable count
    # 4. Assign hash[:word][:count]
  # Return the hash