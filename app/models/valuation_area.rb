# frozen_string_literal: true

class ValuationArea < ApplicationRecord
  belongs_to :store
  belongs_to :city
end
