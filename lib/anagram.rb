# Your code goes here!
class Anagram
    def initialize(word)
        @word = word
    end
    def match(list)
        list.filter do |w|
            w.split("").sort_by {|c| c} == @word.split("").sort_by {|c| c}
        end
    end
end

word = Anagram.new('word')

p word.match(["test", "drow"])