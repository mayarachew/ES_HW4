# spec/models/movie_spec.rb

require 'rails_helper'
require 'simplecov'
SimpleCov.start 'rails'

RSpec.describe Movie, :type => :request do
  subject {
    [described_class.new(
                        title: "Title 1",
                        director: "Director 1",
                        rating: "G",
                        description: "Lorem ipsum",
                        release_date: DateTime.now + 1.week),
    described_class.new(
                        title: "Title 2",
                        director: nil,
                        rating: "G",
                        description: "Lorem ipsum",
                        release_date: DateTime.now + 1.week),
    described_class.new(
                        title: "Title 3",
                        director: "Director 3",
                        rating: "G",
                        description: "Lorem ipsum",
                        release_date: DateTime.now + 1.week),
    described_class.new(
                        title: "Title 4",
                        director: "Director 1",
                        rating: "G",
                        description: "Lorem ipsum",
                        release_date: DateTime.now + 1.week),]
  }

  it "it should find movies by the same director" do
    director = subject[0].director	
    movies1 = Movie.where(director: director)
    movies2 = receive(:find_movies_same_director).with(director)
		# expect(movies1).to eq(movies2)
    # not finished	
  end

  it "it should not find movies by different directors" do
    director = subject[0].director
    movies = receive(:find_movies_same_director).with(director)
    movies_find = Movie.find_by(director: director)
		# expect(movies).to eq(movies_find)	
    # not finished	
  end

end