class Post < ActiveRecord::Base
  has_many :post_images, dependent: :destroy
  #accepts_nested_attributes_for :post_images, :reject_if => lambda { |t| t['post_image'].nil? }
  belongs_to :author, polymorphic: true

 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
 end

end
