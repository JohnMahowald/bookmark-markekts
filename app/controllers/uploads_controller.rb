class UploadsController < ApplicationController
  def index
  end

  def uploadFile
    post = BookmarkFile.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end
end
