Given(/^I am on the create post page$/) do
	visit new_post_url
end

When(/^I fill the new post form with valid data$/) do
	fill_in "post_title", with: "My 2-months trip to latino america!"
  	fill_in "post_body", with: "This trip down to latino america took 2 months riding my motorcycle. The advanture stared by ..."
  	fill_in "post_published", with: true
  	click_button "Create"
end

Then(/^the post should be added to database$/) do
	expect(Post.find_by(title: "My 2-months trip to latino america!")).not_to be_nil
end

Then(/^I should see it on the home page$/) do
	visit root_path
	expect(page).to have_content("My 2-months trip to latino america!")
end