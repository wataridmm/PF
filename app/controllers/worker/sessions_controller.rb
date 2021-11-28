# frozen_string_literal: true

class Worker::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  before_action :reject_worker, only: [:create]

  protected

  def reject_worker
    @worker = Worker.find_by(email: params[:worker][:email].downcase)
    if @worker
      if (@worker.valid_password?(params[:worker][:password]) && (@worker.active_for_authentication? == false))
        flash[:error] = "退職済です。"
        redirect_to new_worker_session_path
      end
    else
      flash[:error] = "必須項目を入力してください。"
    end
  end







end
