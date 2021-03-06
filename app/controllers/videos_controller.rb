class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
    @comments = @video.comments
    @comment = @video.comments.new
  end

  def new
    @video = Video.new
  end

  def edit
    @video = Video.find(params[:id])
  end

  def create
    video = Video.new(video_params)
    video.save
    redirect_to @video
  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    redirect_to @video
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to :index
  end

  private
  def video_params
    params.require(:video).permit(:title, :description, :youtube_id)
  end
end
