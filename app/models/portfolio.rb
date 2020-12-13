class Portfolio < ApplicationRecord
    validates :title, :subtitle, :body, :main_image, :thumb_image, presence: true

    def self.angular
        where(subtitle: 'Angular')
    end

    scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}


    after_initialize :set_default

    def set_default
        self.main_image ||= "https://cdn.pixabay.com/photo/2020/11/22/20/39/giraffe-5767909_1280.jpg"
        self.thumb_image ||= "https://cdn.pixabay.com/photo/2019/01/26/10/24/eagle-3955951_1280.jpg"
    end
end
