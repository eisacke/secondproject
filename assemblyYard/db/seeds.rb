# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create!(user_name:"sam", email: "sam@gmx.com", password:"password", password_confirmation:"password")
user2 = User.create!(user_name:"emily", email: "emily@gmx.com", password:"password", password_confirmation:"password")
user3 = User.create!(user_name:"keith", email: "keith@gmx.com", password:"password", password_confirmation:"password")
user4 = User.create!(user_name:"dami", email: "dami@gmx.com", password:"password", password_confirmation:"password")

category1 = Category.create!(language:"ruby")
category2 = Category.create!(language:"javascript")
category3 = Category.create!(language:"css")
category4 = Category.create!(language:"markup")

snippet1 = Snippet.create!(contents: "text-shadow: 0 0 5px #fff,
               0 0 10px #fff,
               0 0 15px #fff,
               0 0 20px #228DFF,
               0 0 35px #228DFF,
               0 0 40px #228DFF,
               0 0 50px #228DFF,
               0 0 75px #228DFF;", search_terms: "neon text css blue", name: "neon text", user: user1, category_id: 3)
snippet2 = Snippet.create!(contents: "window.onload = function() {
    if(!window.location.hash) {
        window.location = window.location + '#loaded';
        window.location.reload();
    }
}", search_terms: "reload page once refresh javascript js", name: "page reloader", user: user2, category_id: 2)
snippet3 = Snippet.create!(contents: "this is not code!", search_terms: "debug", name: "third code", user: user3, category_id: 3)
snippet4 = Snippet.create!(contents: "* {
	margin: 0;
}
html, body {
	height: 100%;
}
.wrapper {
	min-height: 100%;
	height: auto !important; /* This line and the next line are not necessary unless you need IE6 support */
	height: 100%;
	margin: 0 auto -155px; /* the bottom margin is the negative value of the footer's height */
}
.footer, .push {
	height: 155px; /* .push must be the same height as .footer */
}

/*

Sticky Footer by Ryan Fait
http://ryanfait.com/

*/", search_terms: "sticky footer css", name: "sticky footer css", user: user1, category_id: 3)

snippet5 = Snippet.create!(contents: '<html>
    <head>
        <link rel="stylesheet" href="layout.css" ... />
    </head>
    <body>
        <div class="wrapper">
            <p>Your website content here.</p>
            <div class="push"></div>
        </div>
        <div class="footer">
            <p>Copyright (c) 2008</p>
        </div>
    </body>
</html>', search_terms: "sticky footer html", name: "sticky footer html", user: user1, category_id: 4)


