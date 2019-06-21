class WelcomeController < ApplicationController
  def index
    @tutor='El grupo de Ruby On Rails'

    @cursoscargados=Curso.count
    @aulascargadas=Aula.count

    @aulastodas=Aula.all
    @cursostodos=Curso.all


   

@cursosmañana=Curso.where(turno:'Mañana')
@cursostarde=Curso.where(turno:'Tarde')
@cursosnoche=Curso.where(turno:'Noche')

@dias=["Lunes","Martes","Miecoles","Jueves","Viernes"]

  end
end
