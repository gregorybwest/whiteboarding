# Given a DNA strand, return its RNA complement (per RNA transcription).

# Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

# Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

# G becomes C
# C becomes G
# T becomes A
# A becomes U

# So based on all this, here's a sample input/output:

# Input: 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'

# write a function
# create an empty string that will store the RNA sequence
# create a hash containing DNA strands as keys and their RNA compliment as the values
# for each (loop) letter of the input string
  # add the corresponding value from the hash using that letter, which is a key, to the RNA sequence 
# return the RNA sequence

def rna_transcription(dna_strand)
  rna_strand = ""
  complement_hash = {
    "G" => "C", 
    "C" => "G", 
    "T" => "A", 
    "A" => "U", 
  }
  dna_strand.each_char do |dna|
    rna_strand << complement_hash[dna]
  end
  rna_strand
end

p rna_transcription("ACGTGGTCTTAA")