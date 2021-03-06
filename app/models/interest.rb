class Interest < ApplicationRecord
  belongs_to :person, foreign_key: 'servidor'
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Interest.create! row.to_hash
    end
  end
end
