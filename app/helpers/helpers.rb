class Helpers
    def self.current_user(session)
        #finds the user in the database and returns the user
        @user = User.find_by_id(session[:user_id])
    end

    def self.is_logged_in?(session)
        #returns true if userid is in the session hash
        !!session[:user_id]
    end
end