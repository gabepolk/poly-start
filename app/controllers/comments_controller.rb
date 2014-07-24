class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to 'http://google.com/'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:message, :commentable_id, :commentable_type)
  end
end
