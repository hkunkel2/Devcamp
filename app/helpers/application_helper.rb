module ApplicationHelper

    def login_helper style = ""
        if current_user.is_a?(GuestUser)
            (link_to "Register", new_user_registration_path, class: style ) +
                " ".html_safe +
            (link_to "Login", user_session_path, class: style)
        else 
            link_to "Logout", destroy_user_session_path, method: :delete, class: style

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

    def nav_items
        [
          {
            url: root_path,
            title: 'Home'
          },
          {
            url: about_me_path,
            title: 'About Me'
          },
          {
            url: contact_path,
            title: 'Contact'
          },
          {
            url: blogs_path,
            title: 'Blog'
          },
          {
            url: portfolios_path,
            title: 'Portfolio'
          },
          {
            url: tech_news_path,
            title: 'Tech News'
          }
        ]
      end
    
      def nav_helper style, tag_type
        nav_links = ''
    
        nav_items.each do |item|
          nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
        end
    
        nav_links.html_safe
      end
    
      def active? path
        "active" if current_page? path
      end
end

