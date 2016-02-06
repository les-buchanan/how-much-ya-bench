class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook, :instagram]

  has_one :profile, dependent: :destroy

  after_create :build_profile

  def first_name
    self.name.blank? ? "" : self.name.split(" ")[0]
  end

  def build_profile
    Profile.create(user: self)
  end

  def bench
    (self.profile.bench_current) ? self.profile.bench_current : 0
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.image = auth.info.image
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      data = session["devise.facebook_data"]
      if user.email.blank? && data && data["info"]
        user.email = data["info"]["email"]
      end
    end
  end

  def self.all_except(user)
    where.not(id: user)
  end
end