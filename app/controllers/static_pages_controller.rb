class StaticPagesController < ApplicationController
  def inicio
  end

  def sobre
  end

  def contato
  end

  def catalogo
    @cursos = Curso.all
  end
end
