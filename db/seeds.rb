# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "started seeding...."
Category.find_or_create_by name: "Programming"
Category.find_or_create_by name: "Sap"
Category.find_or_create_by name: "Qa and Testing"
Category.find_or_create_by name: "Ui/Ux"

puts "Created #{Category.count} categories.."
10.times do

	post = Post.new

	post.job_title = "React Engineer"
	post.job_category = Category.find_by(name: "Ui/Ux").id
	post.highlight_job = true
	post.feature_job = true
	post.job_description = %q{
The team

The web engineering team is responsible for all things unsplash.com.

We use modern and well-supported tools to build the best possible version of our product in collaboration with the API and design teams.

At a high level, the web architecture consists of a Node server (TypeScript), with React for rendering on both the server and client.

	Over the years, we’ve taken Unsplash from a humble Tumblr blog to a fully-fledged web app supporting tens of millions of users and tons of useful features. At the same time, we’ve improved its performance by leveraging modern techniques like SSR, dynamic chunk-splitting, CDN HTML caching, complex state management using memoization and Observables, etc. We’ve done all that with a lean team of just 2 web developers: frequent code releases and in-depth code reviews help us share knowledge and identify problems early. But there’s still so much more to learn and do, and that’s why we need you!

We designed our company in a way to get as much of the stuff that’s not the creative work out of your way, so you can do your best work. We don’t believe in a top-down, shoulder-tapping, 9–5 type culture. You have the autonomy to manage yourself. We don’t work set hours. We respect flow. We believe you should be able to structure your days for what makes you feel the most energized and creative.

A glance at some of our blog posts and open source work can give you an idea on how we approach and solve our problems:

Recently open sourced libraries:
Manipulating URL strings with url-transformers
react-progressive-enhancement: A handy collection of HOCs for universally rendered apps
ts-imgix

Recent blog posts:
	Building the Unsplash Uploader
Strongly-typed finite-state machines with Redux and TypeScript
How we gradually migrated to TypeScript at Unsplash
How we test responsive images at Unsplash

You
If you tick (most of) these boxes, you should get in touch with us:

	You’re comfortable being part of a small, autonomous and distributed team.
	Being a small team, we dive into everything. You are comfortable working across the full stack, from writing CSS to fine tuning a CDN—although we don’t expect you to know these skills upfront, but you should be willing to learn them when they become necessary.
	You’re a quick learner who’s able to pick up new concepts whenever necessary.
	You’re able to adequately prioritize between improving UX, optimizing performance, and building new features.
	You’re comfortable with React.
	You care about the end-product beyond just writing the code that makes it work.

	It’s a bonus if you have experience with:

		TypeScript, Redux, Reselect, Observables.
		front-end performance (e.g. optimising page load, page layout, and React rendering).
		building a large-scale app

	Our team is made up of people who enjoy making things people love. We care about details and we care about quality.

		Generous vacation: 3 weeks MINIMUM vacation.
		Work from home: We’re a remote first company.
		Workshops/conferences: Conferences & Learning budget.
		Company retreats: Team retreats 1-2 times a year.
		Relocation: If you’d like to relocate to Montreal, we provide $8,000 lump sum to cover out-of-pocket costs associated with relocation
	Flexible hours: You manage your time. You set your working hours.
		Maternal/Paternal leave: If you have a baby, you’re paid for any time you need to take off. The time you take off will be your judgment. This is an important time and we don’t want to be deciding which days you should be taking off or not. We’ll be there for you. If we feel the balance is not quite right or if you have any questions, we’ll chat.
		Pet friendly: Obviously if you work from home, but also if you relocate to Montreal. Our office is pet friendly.
	}

	post.company_head_quarters = "Montreal, Canada"
	post.job_region = "Canada"
	post.job_type = 1
	post.job_apply_link = "http://job.link"

	post.company_name = "Unsplash"
	post.company_description = %q{Over the years, we’ve taken Unsplash from a humble Tumblr blog to a fully-fledged web app supporting tens of millions of users and tons of useful features. At the same time, we’ve improved its performance by leveraging modern techniques like SSR, dynamic chunk-splitting, CDN HTML caching, complex state management using memoization and Observables, etc. We’ve done all that with a lean team of just 2 web developers: frequent code releases and in-depth code reviews help us share knowledge and identify problems early. But there’s still so much more to learn and do, and that’s why we need you!}
	post.company_statement = "really cool company statement"
	post.company_email = "jobs@unplash.com"
	post.company_logo = "http://unsplash.com/logo.png"
	post.company_url = "http://unsplash.com"

	post.save!
end
puts "Created #{Post.count} jobs.."
puts "compleeted seeding ..."
