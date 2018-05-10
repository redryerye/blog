class Post < ApplicationRecord
    extend FriendlyId
    validates :title, presence: true, length:{ minimum: 5 }
    validates :body, presence: true
    # validates :name, presence: true, uniqueness: true

    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    friendly_id :title, use: :slugged

    def to_param
      title
    end

end
