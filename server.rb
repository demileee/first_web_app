require 'sinatra'

get '/' do
  redirect to ('/home')
end

get '/gallery' do
  redirect to ('/porfolio')
end

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get '/favourites' do
  @links = { google: 'http://google.com', facebook: 'http://facebook.com', twitter: 'http://twitter/.com'}
  erb :favourites
end
