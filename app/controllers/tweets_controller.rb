class TweetsController < ApplicationController

    before_action :set_tweet, only: [:destroy, :update, :edit, :show]

    def show
    end
  
    def edit
    end
  
    def index
        @tweets = Tweet.order(created_at: :asc)
    end
  
    def new
      @tweet = Tweet.new
    end
  
    def create
      @tweet = Tweet.new(tweet_params)
      if @tweet.save
        redirect_to @tweet, notice: "Tweet was successfully created."
      else
        render 'new'
      end
    end
  
    def update
      if @tweet.update(tweet_params)
        flash[:notice] = "Tweet was updated successfully."
        redirect_to @tweet
      else
        render :edit
      end
    end
  
    def destroy
      @tweet.destroy
      redirect_to tweets_path, notice: 'Tweet was successfully deleted.'
    end

    private
  
    def tweet_params
      params.require(:tweet).permit(:username, :password)
    end

    def set_tweet
        @tweet = Tweet.find(params[:id])
    end
  end
  