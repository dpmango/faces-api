class PostMailer < ApplicationMailer
  def user_submit(post)
    @post = post
    @email_to = "xs290@me.com"
    mail(to: @email_to, subject: '#ДЕЛИСЬВЗГЛЯДОМ :: Новая публикация')
  end
end
