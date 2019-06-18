class WelcomeController < ApplicationController
  def index
    @tutor='El grupo de Ruby On Rails'
    @cursoscargados=Curso.count
    @aulascargadas=Aula.count
  end
end
