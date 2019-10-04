def duplicate_encode(word)
  result = word.split('').map do |char|
    if word.downcase.count(char) == 1
      "("
    else
      ")"
    end
  end
  result.join('')
end
