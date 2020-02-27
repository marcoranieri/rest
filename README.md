Backend Technical Test

Congratulations on making it through the phone screen, you’re now one step closer to becoming a
Stitcher!

We’d like you to complete a short, simple test which will allow us to see an example of your ‘chops’.
Your task is to produce a simple API to resize images.

This should have two endpoints:

1. An endpoint which will validate your file is an image and return key metadata (filetype, size, dimensions)

2. An endpoint which will return a resized version of your image file

How you implement this is up to you, but we’re looking for key qualities:

● Code clarity
● Smart architectural decisions
● Wise use of encapsulation and abstraction

We look forward to receiving your test!


---------------------------------------------------------------------------------

README

My final thought about this test is that I've overthought mostly everything because it caught me off guard I guess.
Usually we manipulate Files through external services like Cloudinary ( images, video, PDF etc.. ) so it was my very first time challenging myself with this kind of API application ( useful if you have a different technology in front-end that needs to communicate with your rails application ). I've try my best as always, but due to others previous commitments, today I didn't had time to complete it as I would.

Here more information about this app:

- I've created a namespace for VERSIONING the API, so the application is ready to work on a new version while the previous one is still working (old applications that rely on our V1 would still be ok)

- I would like to think better about make all the routes in the application 'RESTFUL' ( if needed ) for future implementation

- I've added some custom validation in Item model if we decide to start storing those image in our database

- I've also implemented Devise gem for 'Authentication'

- Ideally, I would skip, or maybe just disable, more Rails default options in 'rails new':
rails new \    
  --database postgresql --skip-action-mailer --skip-action-mailbox \
  test-image

- I've added a BaseController that help us to organize better our code ( for example we can rescue from different error or include Pundit Gem for 'Authorization' if needed )

- If we decide to use an external service to return a custom image from an original one, I would suggest Cloudinary which allow us to retrieve directly a resized/cropped/modified image ( using the unique cloudinary key => 'my_model.image.key' )

- First future implementation/priority would be adding some Testing as soon as possible


I am available to answer any questions which you might have and I am more than ready to keep challenging myself with your company Stack ( like Elixir! ).


Thanks again for the opportunity.
Marco