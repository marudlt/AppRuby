class AulasController < ApplicationController
  def index
    @aulas = Aula.all
  end
  #GET /aulas/:id
  def show 
    @aula = aulas.find(params[:id])
  end
  #GET /aulas/new
  #lo guarda en memoria no en la base de datos, es una instancia aun no es persistente
  def new 
    @aula = Aula.new
  end
  def create
      @aula = Aula.new(
        Numero: params[:aula][:Numero],
        Piso: params[:aula][:Piso], 
        Capacidad:  params[:aula][:Capacidad])
      @aula.save
      redirect_to aulas_path(@aula)
    end
   def show
      @aula = Aula.find(params[:id])
    end
end
