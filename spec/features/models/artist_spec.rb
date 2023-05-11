require "rails_helper"

RSpec.describe Artist, type: :model do
  it {should have_many :songs}

  describe "instance methods" do
    describe "#average_song_length" do
      before(:each) do
        @prince = Artist.create!(name: "Prince")
        @purple = @prince.songs.create!(title: "Purple Rain", length: 845, play_count: 8599)
        @beret = @prince.songs.create!(title: "Raspberry Beret", length: 665, play_count: 99)
      end

      it "returns the average song length" do
        expect(@prince.average_song_length).to eq(755)
      end
    end
  end
end