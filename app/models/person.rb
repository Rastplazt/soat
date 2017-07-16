class Person < ApplicationRecord
  belongs_to :user

  TYPE_IDENTIFICATION_OPTIONS = [ "C", "E"]
end
