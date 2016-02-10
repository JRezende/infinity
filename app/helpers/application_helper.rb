module ApplicationHelper
  def model_logged
    if current_user
      current_user
    end
  end

  def name_model_logged
    model = model_logged
    if model
      model.name
    end
  end
end
