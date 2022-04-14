class ApplicationController < ActionController::Base
    def after_sign_in_path_for(user)
        if current_user.company_id?        
            products_path
        else
            new_company_path
        end
    end
end
