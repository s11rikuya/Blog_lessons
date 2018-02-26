class CommentsController < ApplicationController
  def create
    Comment.create(name: params[:name], text: params[:text], post_id: params[:id])
    redirect_to "/posts/#{params[:id]}"
  end
end
