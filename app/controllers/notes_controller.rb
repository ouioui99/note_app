class NotesController < ApplicationController

  def index
    @notes = Note.all
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
      redirect_to "/show/#{@note.id}", notice: 'ノート作成成功！！'
    else
      redirect_to 'new'
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to root_path
  end



  private
  def params_note
    params.require(:note).permit(:title)
  end

end
