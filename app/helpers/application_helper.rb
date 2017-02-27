module ApplicationHelper

  def instructor?(user)
    user.type == "Instructor"
  end
end
