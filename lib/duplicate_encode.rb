def duplicate_encode(word)
  result = []
  word.downcase!
  word.split('') do |char|
    if word.count(char) == 1
      result << "("
    else
      result << ")"
    end

  end
  result.join('')
end
