# madlibs program that reads in some text from a text file that you have created,
# and then plugs in a selection of randomized nouns, verbs, adjectives,
# and adverbs into that text and prints it. 


ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS      = %w(fox dog head leg cat tail).freeze
VERBS      = %w(spins bites licks hurdles).freeze
ADVERBS    = %w(easily lazily noisly excitedly).freeze
TAGS =  { '<adjective>' => ADJECTIVES,  '<noun>' => NOUNS, '<adverb>' => ADVERBS, '<verb>' => VERBS}

def display_mad_lib(file)
  mad_sentence = ''
  File.open(file) do |f_obj|
    f_obj.each do |line|
      TAGS.each do |tag, ls|
        regex = Regexp.new(tag)
        random_words = ls.shuffle
        num_words = random_words.size
        random_index = 0
        line.gsub!(regex) do |match|
          word =random_words[random_index]
          random_index = (random_index + 1) % num_words
          word
        end
      end
      mad_sentence << line
    end
  end
  mad_sentence
end
1.upto(10) do |i|
  puts display_mad_lib('mad_lib_text.txt')
  puts '************'
end
