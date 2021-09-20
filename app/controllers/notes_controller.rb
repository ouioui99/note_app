class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
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



  private
  def params_note
    params.require(:note).permit(:title)
  end

end
