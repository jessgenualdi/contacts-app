class Contact < ActiveRecord::Base
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

class John < Contact
  def all_johns
    @find_john = Contacts.find_by(first_name: params['Joe'])
    @find_john.each do |name|
    end 
  end
end