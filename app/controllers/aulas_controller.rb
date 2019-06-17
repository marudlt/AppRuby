class AulasController < ApplicationController
  def index
    #todos los registros
    @aulas = Aula.all
  end
  #GET /aulas/:id
  def show 
    #el registro por id
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
      if @aula.save
        redirect_to aulas_path(@aula)
      else
        render :new
      end
    end
  end
