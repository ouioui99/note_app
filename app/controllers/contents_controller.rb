class ContentsController < ApplicationController

  def new
    @content = Content.new
  end

  def create
    @contents = Content.new(content_params)
    if @contents.save
      flash[:notice]="セーブしました"
      redirect_to root_path
    else 
      flash[:alert]="セーブ失敗"
    end
  end

  private
  def content_params
    params.require(:content).permit(:title,:content)
  end
end
