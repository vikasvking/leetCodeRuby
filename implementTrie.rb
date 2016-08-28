class TrieNode
    # Initialize your data structure here
    attr_accessor :fullword,:children
    def initialize
        @fullword=false
        @children={}
    end
end

class Trie
    def initialize
        @root = TrieNode.new
    end

    # @param {string} word
    # @return {void}
    # Inserts a word into the trie.
    def insert(word)
        node=@root
        word.each_char do |i|
            node=node.children[i] ||= TrieNode.new
        end
        node.fullword=true;nil
    end

    # @param {string} word
    # @return {boolean}
    # Returns if the word is in the trie.
    def search(word)
        node=@root
        word.each_char do |i|
            return false unless node.children.key?(i)
            node=node.children[i]
        end
        return node.fullword
    end

    # @param {string} prefix
    # @return {boolean}
    # Returns if there is any word in the trie
    # that starts with the given prefix.
    def starts_with(prefix)
        node=@root
        prefix.each_char do |i|
            return false unless node.children.key?(i)
            node=node.children[i]
        end
        return true
    end
end

# Your Trie object will be instantiated and called as such:
# trie = Trie.new
# trie.insert("somestring")
# trie.search("key")