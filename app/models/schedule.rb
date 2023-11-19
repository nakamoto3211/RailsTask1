class Schedule < ApplicationRecord
  validates :title, :start_date, :end_date, presence:true
  validates :title, length: {maximum:20}
  validate :date_check
  validates :memo, length: {maximum:500}

  private

  def date_check
    if end_date < start_date
      errors.add(:end_date, "終了日は開始日以降の日付で選択してください。")
    end
  end
end
