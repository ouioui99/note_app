class ContentsController < ApplicationController

  def index
    @contents = Content.all
  end

  def new
    @content = Content.new
    @note = Note.find_by(id: params[:id])
    login_users_note
  end

  def create
    @notes = Note.all
    @content = Content.new(content_params)
    if @content.save
      redirect_to "/show/#{@content.note_id}"
    else 
      render 'new'
    end
  end

  def edit
    @content = Content.find_by(id: params[:id])
    @note = Note.find_by(id: @content.note_id)
    login_users_note
  end

  def update
    @content = Content.find_by(id: params[:id])
    if @content.update(content_params)
      redirect_to "/show/#{@content.note_id}"
    else
      redirect_to root
    end
  end

  def destroy
    @content = Content.find_by(id: params[:id])
    @note_id = @content.note_id
    @content.destroy
    redirect_to "/show/#{@note_id}"
  end


  private
  def content_params
    params.require(:content).permit(:title,:contents,:note_id)
  end

  def login_users_note
    @notes = Note.where(user_id: session[:user_id])
  end

end
