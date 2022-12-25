class RegistrationsController < Devise::RegistrationsController
  private

  def after_sign_up_path_for(resource)
    root_path # or any other path # Решает проблему с маршрутом sign up, после добавляем маршрут с контроллером
  end
end