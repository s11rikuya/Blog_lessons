class CommentsController < ApplicationController
  def create
    Comment.create(name: params[:name], text: params[:text], post_id: params[:id])
    @comments = Comment.where(post_id: params[:id])
  end
end
