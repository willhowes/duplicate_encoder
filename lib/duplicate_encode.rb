def duplicate_encode(word)
  word.downcase!
  result = word.split('').map do |char|
    if word.count(char) == 1
      "("
    else
      ")"
    end
  end
  result.join('')
end
