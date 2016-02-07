class Book < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { in: 2..10 }
  validate :first_name_is_natsu

  private
  def first_name_is_natsu
    if name.present? && name.split("").first != "夏"
      errors.add(:name, :is_summer)
    end
  end

end
