require 'users_helper'

class User < ActiveRecord::Base
    belongs_to :referrer, class_name: 'User', foreign_key: 'referrer_id'
    has_many :referrals, class_name: 'User', foreign_key: 'referrer_id'

    validates :email, presence: true, uniqueness: true, format: {
        with: /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i,
        message: 'Invalid email format.'
    }
    validates :referral_code, uniqueness: true

    before_create :create_referral_code
    after_create :send_welcome_email

    REFERRAL_STEPS = [
        {
            'count' => 5,
            'html' => 'Prize<br>1',
            'class' => 'two',
            'image' => ActionController::Base.helpers.asset_path(
                'refer/prize-1@2x.png'
            )
        },
        {
            'count' => 10,
            'html' => 'Prize<br>2',
            'class' => 'three',
            'image' => ActionController::Base.helpers.asset_path(
                'refer/prize-2@2x.png'
            )
        },
        {
            'count' => 25,
            'html' => 'prize<br>3',
            'class' => 'four',
            'image' => ActionController::Base.helpers.asset_path(
                'refer/prize-3@2x.png'
            )
        },
        {
            'count' => 50,
            'html' => 'One Year<br>Free Weed',
            'class' => 'five',
            'image' => ActionController::Base.helpers.asset_path(
                'refer/prize-4@2x.png'
            )
        }
    ].freeze

    private

    def create_referral_code
        self.referral_code = UsersHelper.unused_referral_code
    end

    def send_welcome_email
        UserMailer.delay.signup_email(self)
    end
end
