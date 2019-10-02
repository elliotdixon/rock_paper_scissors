require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/rock_paper_scissors.rb')
also_reload('models/*')

get '/' do
  erb (:home)
end

get('/:choice1/:choice2') do
  @result = RockPaperScissors.play(params[:choice1], params[:choice2])
  erb(:result)
end
