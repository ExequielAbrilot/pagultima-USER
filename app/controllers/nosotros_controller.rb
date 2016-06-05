class NosotrosController < ApplicationController
  
  def show
  		@fotografo= Fotografo.all
  end

  def informacion
    	@fotografo = Fotografo.page(params[:page]).per(3)
  	end
end
