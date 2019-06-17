class AulasController < ApplicationController
  def index
    @aulas = aulas.all
  end
  #GET /aulas/:id
  def show 
    @aula = aulas.find(params[:id])
  end
  #GET /aulas/new
  def new 
    @aula = aula.new
  end

end
