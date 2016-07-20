class Contact < ActiveRecord::Base
  belongs_to :user
  
  def friendly_created_at
    created_at.strftime('%b %d %Y')
  end

  def full_name
    first_name + " " + last_name
  end

  def japan_prefix
    "+81 "
  end
end

