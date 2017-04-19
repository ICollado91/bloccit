class FavoriteMailer < ApplicationMailer
    default from: "collado.ip@gmail.com"
    
    def new_comment(user, post, comment)
        headers["Message-ID"] = "<comments/#{comment.id}@boiling-ridge-78323.herokuapp.com"
        headers["In-Reply-To"] = "<post/#{post.id}@boiling-ridge-78323.herokuapp.com"
        headers["References"] = "<post/#{post.id}@boiling-ridge-78323.herokuapp.com"
        
        @user = user
        @post = post
        @comment = comment
        
        mail(to: user.email, subject: "New comment on #{post.title}")
    end
    
    def new_post(post)
        headers["Message-ID"] = "<posts/#{post.id}@boiling-ridge-78323.herokuapp.com"
        headers["In-Reply-To"] = "<post/#{post.id}@boiling-ridge-78323.herokuapp.com"
        headers["References"] = "<post/#{post.id}@boiling-ridge-78323.herokuapp.com"
        
        @post = post
        mail(to: post.user.email, subject: "You are now following #{post.title}!")
    end
end
