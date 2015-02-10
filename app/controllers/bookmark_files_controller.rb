class BookmarkFilesController < ApplicationController
  def create
    @file = BookmarkFile.new bookmark_params

    debugger
    
    if @file.save
      redirect_to user_path(bookmark_params[:user_id])
    else
      redirect_to :back
    end
  end

  private

  def bookmark_params
    params.require(:user).permit(:bookmark_file, :user_id)
  end
end
