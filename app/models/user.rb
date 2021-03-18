class User < ApplicationRecord
    has_many :tasks
    before_save{self.email=email.downcase}
    EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

    has_secure_password
    validates :first_name, presence: true, length:{minimum:1,maximum:50}
    validates :last_name, presence: true, length:{minimum:1,maximum:50}
    validates :email, presence: true, uniqueness:{case_sensitive:false},format:{with:EMAIL_REGEX}




      
      

end