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
      flash[:notice]="ノート作成成功！！"
      redirect_to root_path
    else
      flash[:alert]="タイトルが空欄です"
      redirect_to'/new/note'
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
