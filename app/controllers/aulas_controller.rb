class AulasController < ApplicationController
  def index
    @aulas = aulas.all
    p "hello"
  end
  #GET /aulas/:id
  def show 
    @aula = aulas.find(params[:id])
  end
  #GET /aulas/new
  #lo guarda en memoria no en la base de datos, es una instancia aun no es persistente
  def new 
    @aula = aula.new
    p "hello1"
  end

  def create 
    @aula = aula.new(
      Numero: params[:aula][Numero], Piso: params[:aula][Piso], 
      Capacidad:  params[:aula][Capacidad]
    )
    @aula.save
    redirect_to @aula
  end
end
