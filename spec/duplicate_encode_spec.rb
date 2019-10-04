require 'duplicate_encode'

describe "#duplicate_encoder" do
  it 'returns "(" for one single letter string' do
    expect(duplicate_encoder("a")).to eq("(")
  end
end
