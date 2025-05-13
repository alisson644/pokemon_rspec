class Pokemon < ActiveRecord::Base
  def name_completed
    "#{name} - #{id_national}" if name && id_national
  end
end
