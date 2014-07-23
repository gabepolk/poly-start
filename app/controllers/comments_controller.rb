class CommentsController < ApplicationController
  def create
    # binding.pry
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment.video
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:message, :video_id)
  end
end
