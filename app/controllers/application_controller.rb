class ApplicationController < ActionController::Base

    include DeviseWhitelist
    include SetSource
    include CurrentUserGuest
    include DefaultPageContent

end


