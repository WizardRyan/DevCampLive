class Skill < ApplicationRecord
  validates_presence_of :title, :percentUtilized
end
