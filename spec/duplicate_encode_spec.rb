require 'duplicate_encode'

describe "#duplicate_encoder" do
  it 'returns "(" for one single letter string' do
    expect(duplicate_encode("a")).to eq("(")
  end

  it 'returns "((" for a two-letter word with no duplicates' do
    expect(duplicate_encode("ab")).to eq("((")
  end

  it 'returns "))" for a two letters which are the same' do
    expect(duplicate_encode('aa')).to eq('))')
  end

  it 'returns "))" for two letters the same but one capitalized' do
    expect(duplicate_encode('aA')).to eq('))')
  end

  it 'handles a mixture of duplicated and non-duplicated letters' do
    expect(duplicate_encode('recede')).to eq('()()()')
    expect(duplicate_encode("Success")).to eq(")())())")
    expect(duplicate_encode("(( @")).to eq("))((")
    expect(duplicate_encode('fee')).to eq('())')
  end

  it 'handles capital letters that only appear once' do
    expect(duplicate_encode("CodeWarrior")).to eq('()(((())())')
  end
end
