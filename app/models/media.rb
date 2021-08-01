class Media < ApplicationRecord
    self.table_name = "medias"
    belongs_to :user
    serialize :date_unplugged, Array
end
