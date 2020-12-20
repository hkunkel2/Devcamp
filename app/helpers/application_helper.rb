module ApplicationHelper

    def login_helper
        if current_user.is_a?(GuestUser)
            (link_to "Register", new_user_registration_path) +
                "<br>".html_safe +
            (link_to "Login", user_session_path)
        else 
            link_to "Logout", destroy_user_session_path, method: :delete

        end
        
    end

    def source_helper(layout)
        if session[:source]
            greeting = "Thanks for visting me from #{session[:source]}, you are currently on the #{layout} layout!"
            content_tag(:p, greeting, class: "source-greeting")
        end
    end

    def copyright_generator
        HkunkelViewTool::Renderer.copyright 'Harrison Kunkel', 'All rights reserved'
    end
end

