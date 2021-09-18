class ContentsController < ApplicationController

  def index
    @contents = Content.all
  end

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
      redirect_to root_path
    end
  end

  def edit
    @content = Content.find_by(id: params[:id])
  end

  def update
    @content = Content.find_by(id: params[:id])
    if @content.update(content_params)
      redirect_to contents_path
    else
      redirect_to edit_path
    end
  end

  def destroy
    @content = Content.find_by(id: params[:id])
    @content.destroy
    redirect_to contents_path
  end


  private
  def content_params
    params.require(:content).permit(:title,:contents)
  end
end
