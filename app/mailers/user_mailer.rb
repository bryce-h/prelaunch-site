class UserMailer < ActionMailer::Base
    default from: 'TheHighCommission <welcome@thehighcommission.ca>'

    def signup_email(user)
        @user = user
        @twitter_message = '#Cannabis is evolving. Excited for @TheHighCommission to launch.'

        mail(to: user.email, subject: 'Thanks for signing up!')
    end
end
