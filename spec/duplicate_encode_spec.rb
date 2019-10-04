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

  # DON'T FORGET EDGE CASE OF CAPITALISED LETTERS
end
