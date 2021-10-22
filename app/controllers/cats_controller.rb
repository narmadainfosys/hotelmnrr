class CatsController < ApplicationController
    before_action :set_cats, only: [:destroy]
    def index
      @cats = Cat.all
    end
  
    def new
      @cat = Cat.new
    end
  
    def show
      @cat = Cat.find(params[:id])
    end
  
    def destroy
      # cat.find(params[:id]).destroy
      @cat.destroy
      respond_to do |format|
        format.html { redirect_to cats_path, notice: ' cat was successfully destroyed.' }
      end
    end
    
    def create
      @cat = Cat.new(cat_params)
  
      respond_to do |format|
        if @cat.save
          format.html { redirect_to cats_path notice: 'cat was successfully created' }
        else
          format.html { render :new } 
        end
    end
  
    
  end
  
  private
    def set_cats
      @cat = Cat.find(params[:id])
    end
  
    def cat_params
      params.require(:cat).permit(:image)
    end
  end
  
  
  