class Question < ApplicationRecord
  belongs_to :user
  belongs_to :asker, class_name: "User", optional: true
end
