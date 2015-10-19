class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true

  has_many :contacts, :dependent => :destroy

  has_many :contact_shares,
    :dependent => :destroy,
    class_name: "ContactShare",
    foreign_key: :user_id,
    primary_key: :id

  has_many :shared_contacts,
    through: :contact_shares,
    source: :contact

  has_many :comments, :as => :commentable

  def all_contacts
    result = []
    result << contacts
    result << contact_shares
    result
  end

end
