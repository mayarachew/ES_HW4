# spec/models/movie_spec.rb

require 'rails_helper'
require 'simplecov'
SimpleCov.start 'rails'

RSpec.describe Movie, :type => :request do

  it "When the specified movie has a director, it should" do
    Movie.create( title: "Title 1", 
                  director: "Director 1", 
                  rating: "G", 
                  description: "Description 1", 
                  release_date: DateTime.now) 
    movie = Movie.find(1)
    expect(movie.director).to eq("Director 1")
  end
  
  it "When the specified movie has no director, it should" do
    Movie.create( title: "Title 1", 
                  director: nil, 
                  rating: "G", 
                  description: "Description 1", 
                  release_date: DateTime.now) 
    movie = Movie.find(1)
    expect(movie.director).to be_nil
  end

end