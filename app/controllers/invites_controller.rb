class InvitesController < InheritedResources::Base

  private

    def invite_params

      params.require(:invite).permit(:gca_user_id, :invite_email_id, :created_by, :created_date, :updataed_by, :updated_date, :round_id, :nick_name, :status, :player_id)

    end
end

