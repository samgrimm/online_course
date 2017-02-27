class EnrollmentsController < ApplicationController

  def create
    @enrollment = current_user.enrollments.build(curso_id:params[:curso_id])
    if @enrollment.save
      redirect_to cursos_path(locale: I18n.locale), notice: 'Enrolled!'
    else
      redirect_to :back
    end
  end


end
