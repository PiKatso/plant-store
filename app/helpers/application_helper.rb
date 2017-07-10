module ApplicationHelper

  def is_admin?
    current_user && current_user.admin
  end

  def is_author(review)
    current_user.id == review.user_id
  end

end
