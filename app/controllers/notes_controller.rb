class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(params_note)
    if @note.save
      flash[:notice]="ノート作成"
      redirect_to root_path
    else
      flash[:alert]="ノート作成できませんでした"
      redirect_to '/new/note'
    end
  end



  private
  def params_note
    params.require(:note).permit(:title)
  end

end
