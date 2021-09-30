class DocumentsController < ApplicationController
  before_action :set_documents, only: [:destroy]
  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def show
    @document = Document.find(params[:id])
  end

  def destroy
    # Document.find(params[:id]).destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_path, notice: ' Document was successfully destroyed.' }
    end
  end
  
  def create
    @document = Document.new(document_params)

    respond_to do |format|
      if @document.save
        format.html { redirect_to documents_path notice: 'document was successfully created' }
      else
        format.html { render :new } 
      end
  end

  
end

private
  def set_documents
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:image)
  end
end


