class NotesController < ApplicationController

  def index
    #notesデータの中でuser_idとセッションidが該当するデータ全て持ってくる
    @notes = Note.where(user_id: session[:user_id])
  end

  def new
    @note = Note.new
  end

  def show
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(params_note)
    if @note.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to root_path
  end



  private
  def params_note
    params.require(:note).permit(:title, :user_id)
  end



end
