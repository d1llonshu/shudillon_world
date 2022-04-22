class Article < ApplicationRecord
    #added stuff
    has_one :category

    validates_presence_of :title
    validates_presence_of :content

    scope :alphabetical, -> { order('name') }
    scope :active, -> { where('active = ?', true) }

end
