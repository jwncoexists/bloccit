# [jwn-bloccit](http://jwn-bloccit.herokuapp.com)

A Reddit-style application for posting comments.
This was developed as part of BLOC's Web Development apprenticeship (see more about [BLOC](http://bloc.io))

Setup
-----

1.  This app uses [Sendgrid](http://www.sendgrid.com) add-on email service.  Make sure you have a user account established with SendGrid. 

2. This app also uses [Amazon S3](http://aws.amazon.com/s3/) for image storage.  Make sure you have a User Account with S3.  On S3, you will need to create (2) buckets:  one for Development, and one for Production, note the names of these buckets and configure your bloccit app with these names (step 3. below).

3. To configure your SendGrid user name/password as well as your Amazon S3 keys and bucket names, copy the "config/application.example.yml" file, and remove "example" from the name, then specify your configurations in this file. Your application.yml should contain your sensitive credentials. It should be included in .gitnore as well.


Usage
-----

