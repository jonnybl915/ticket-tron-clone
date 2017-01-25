class Developer < ActiveRecord::Base
  def retire
    update! retired_at: Time.now
  end
  def self.active
    where(retired_at: nil)
  end
  def retired?
    retired_at.present?
  end
end
