#
#    This Generator creates names similar to those generated by the algorithm 
#    used on Anarres, the desert planet of the exile anarchists, in the 
#    'ambiguous utopia' 'The Dispossessed' by Ursula K. Le Guin
#

class NamesGenerator
 VOWELS = ['a', 'e', 'i', 'o', 'u']
 CONSONANTS = ('a'..'z').to_a - VOWELS
 COMBINED_CONSONANTS = ['sh', 'kv', 'gv'] 
 NON_VOWEL_SOUNDS = CONSONANTS + COMBINED_CONSONANTS
 
 def self.generate_name
   (NON_VOWEL_SOUNDS.sample + 
    VOWELS.sample + 
    NON_VOWEL_SOUNDS.sample + 
    VOWELS.sample + 
    NON_VOWEL_SOUNDS.sample).capitalize
   #todo: check of name already given to living person
   #todo: check if non-dictionary-word
 end
end

10.times do
    puts NamesGenerator.generate_name
end
