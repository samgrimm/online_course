module ApplicationHelper

  def instructor?(user)
    user.type == "Instructor"
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])
    if alert
      alert_generator alert
    end
  end


  def alert_generator msg
    js add_gritter(msg, title: "Curso da Raissa", sticky: false)
  end
end
