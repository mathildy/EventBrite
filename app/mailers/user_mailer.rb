class UserMailer < ApplicationMailer
    default from: 'mathilde.prouchandy@gmail.com'
   
    def welcome_email(user)
      @user = user 
  
      @url  = 'https://eventbrightnow.herokuapp.com' 
  
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

    def attend_event_email(event)
      @event = event
  
      @url = 'https://eventbrightnow.herokuapp.com'
  
      mail(to: @event.admin.email, subject: 'Vous êtes bien inscrit !')
    end
  end
