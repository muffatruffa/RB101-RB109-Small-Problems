 # create a story template with blanks for words. You, or another player,
# then construct a list of words and place them into the story
WORDS = {}
print "Enter a noun: "
WORDS[:noun] = gets.chomp
print "Enter a verb: "
WORDS[:verb] = gets.chomp
print "Enter an adjective: "
WORDS[:adjective] = gets.chomp
print "Enter adverb: "
WORDS[:adverb] = gets.chomp

SENTENCES = []
SENTENCES[0] = format(%(Do you %<verb>s your %<adjective>s %<noun>s %<adverb>s? That's hilarious!), WORDS)
SENTENCES[1] = format(%(The %<adjective>s %<noun>s %<verb>ss %<adverb>s over the sleepy mole.), WORDS)

def print_story
  print SENTENCES.sample
end

print_story
