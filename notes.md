git add .
git commit -m "Some message"
git push heroku master
heroku run rake db:seed
