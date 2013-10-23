class FavoriteMailer < ActionMailer::Base
  default from: "jenniferwnelson@sbcglobal.net"
  def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    # New Headers
    headers["Message-ID"] = "<comments/#{@comment.id}@jwn-bloccit.example>"
    headers["In-Reply-To"] = "<post/#{@post.id}@jwn-bloccit.example>"
    headers["References"] = "<post/#{@post.id}@jwn-bloccit.example>"

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
