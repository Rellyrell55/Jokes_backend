class JokesController < ApplicationController

    def index
        @jokes = Joke.all.sample(1)

        render json: @jokes 
    end

    def show
        @joke = Joke.find(params[:id])

        render json: @joke
    end
end
