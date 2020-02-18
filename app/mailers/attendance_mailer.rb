class AttendanceMailer < ApplicationMailer

    default from:'no-reply@monsite.fr'

    def attendance_event_email(attendance)
        @participant=attedance.user
        @event=attendance.event
        @admin=attendance.event.admin
        @url= 'http://monsite.fr/login'
        mail(to: @user.email, subject: 'Bienvenue sur Eventbrite-THP !')
    end

end
