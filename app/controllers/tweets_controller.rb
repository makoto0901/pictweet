class TweetsController < ApplicationController
  def index
    # 逆順ソート、ソート時はall指定不要
    @tweets = Tweet.order(created_at: "DESC");
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    # params内の必要なやつだけをpermitで取り出す
    params.permit(:name, :text, :image)
  end
end
