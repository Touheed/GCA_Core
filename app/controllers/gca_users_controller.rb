class GcaUsersController < InheritedResources::Base

  private

    def gca_user_params

      params.require(:gca_user).permit(:user_name, :first_name, :middle_name, :last_name, :cell_number, :social_media_provider, :social_media_id, :created_by, :created_date, :updataed_by, :updated_date, :realm, :username, :password, :credentials, :challenges, :email, :emailverified, :verificationtoken, :status, :created, :lastupdated, :provider, :nick_name )
    end
end

