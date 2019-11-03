class RegistrationController < Devise::RegistrationsController

	  def sign_up_params
  	params.require(:user).permit(:username,:email,:password,:password_conformation,:dateofbirth,:gender)
  end
end
