class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies, 
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
    has_one_attached :main_image
    has_one_attached :thumb_image

    validate :acceptable_main_image, :acceptable_thumb_image

    include Placeholder
    validates :title, :subtitle, :body, :main_image, :thumb_image, presence: true

    def self.angular
        where(subtitle: 'Angular')
    end

    scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

    def self.by_position
      order(:position)
    end

    after_initialize :set_default

    def set_default
        self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
        self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')

    end

    def acceptable_main_image
        return unless main_image.attached?
      
        unless main_image.byte_size <= 5.megabyte
          errors.add(:main_image, "is too big")
        end
      
        acceptable_types = ["image/jpeg", "image/png", "image/gif", "image/jpg"]
        unless acceptable_types.include?(main_image.content_type)
          errors.add(:main_image, "must be a JPEG, JPG, GIF, or PNG")
        end
    end

    def acceptable_thumb_image
        return unless thumb_image.attached?
      
        unless thumb_image.byte_size <= 5.megabyte
          errors.add(:thumb_image, "is too big")
        end
      
        acceptable_types = ["image/jpeg", "image/png", "image/gif", "image/jpg"]
        unless acceptable_types.include?(thumb_image.content_type)
          errors.add(:thumb_image, "must be a JPEG, JPG, GIF, or PNG")
        end
    end
    
end
