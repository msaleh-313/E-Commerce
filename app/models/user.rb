class User <ApplicationRecord

  enum role: { admin: 0, seller: 1, buyer: 2 }

  validates :name ,presence: true,length:{minimum:3 ,maximum:50}


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
  uniqueness: { case_sensitive: false },
  format: { with: VALID_EMAIL_REGEX }




# neechay scope krne se easily get kar skta hun different category k user . agr seller chahiye saray to User.seller k zariye controller may saray seller get hojayen gay ...scope basically agay likhi hoye logic ko sql query may translate karta hay
  scope :sellers, -> { where(role: :seller) }
  scope :buyers, -> { where(role: :buyer) }
  scope :pending_approval, -> { where(approved: false) }


end
