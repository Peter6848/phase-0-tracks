require_relative 'word_game'

describe WordGame do 
  let(:word) { WordGame.new }

  it "stores the word given on initialization" do
    expect(word.get_word).to eq ("hello")
  end 


end

