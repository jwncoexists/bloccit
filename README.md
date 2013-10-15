# [jwn-bloccit](http://jwn-bloccit.herokuapp.com)

A Reddit-style application for posting comments.
This was developed as part of BLOC's Web Development apprenticeship (see more about [BLOC](http://bloc.io))

Setup
-----

1.  This app uses [Sendgrid](http://www.sendgrid.com) add-on email service.  Make sure you have a user account established with SendGrid. 

2. This app also uses Amazon S3 for avatar image storage.  Make sure you have a User Account with S3, and have create both development and production buckets.

2. To configure your SendGrid user name/password as well as your Amazon S3 keys and bucket names, copy the "config/application.example.yml" file and remove "example". Your application.yml should contain your sensitive credentials. It should be included in .gitnore as well.


Usage
-----

