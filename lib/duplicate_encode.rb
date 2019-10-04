def duplicate_encode(word)
  result = []
  word.split('') do |char|
    result << "("
  end
  result.join('')
end
