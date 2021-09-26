class ContentsController < ApplicationController

  def index
    @contents = Content.all
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      flash[:notice]="セーブしました"
      redirect_to root_path
    else 
      render 'new'
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
    params.require(:content).permit(:title,:contents,:note_id)
  end


end
