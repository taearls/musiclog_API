# user is a student, so this has additional information attached to it
class UserController < ApplicationController

	before do
		payload_body = request.body.read
		if(payload_body != "")
			@payload = JSON.parse(payload_body).symbolize_keys
			pp @payload
		end
	end

	# get route
	get '/' do
		users = user.all
		{
			success: true,
			message: "Here are all #{users.length} users.",
			users: users
		}.to_json
	end

	# logout route
	get '/logout' do
		username = session[:username]
		session.destroy
		{
			success: true,
			message: "#{username} has logged out."
		}.to_json
	end

	# register route
	post '/register' do
		user = user.new
		user.username = @payload[:username]
		user.password = @payload[:password]
		user.name = @payload[:name]
		user.school = @payload[:school]
		user.grade = @payload[:grade]
		user.email = @payload[:email]
		user.lesson_location = @payload[:lesson_location]
		user.student_phone = @payload[:student_phone]
		user.text_student = @payload[:text_student]
		user.parent_phone = @payload[:parent_phone]
		user.text_parent = @payload[:text_parent]
		user.lesson_day = @payload[:lesson_day]
		user.lesson_time = @payload[:lesson_time]
		user.additional_info = @payload[:additional_info]

		user.save

		session[:logged_in]	= true
		session[:username] = user.username
		session[:user_id] = user.id
		session[:name] = user.name
		session[:school] = user.school
		session[:grade] = user.grade
		session[:email] = user.email
		session[:lesson_location] = user.lesson_location
		session[:student_phone] = user.student_phone
		session[:text_student] = user.text_student
		session[:parent_phone] = user.parent_phone
		session[:text_parent] = user.text_parent
		session[:lesson_day] = user.lesson_day
		session[:lesson_time] = user.lesson_time
		session[:additional_info] = user.additional_info

		{
			success: true,
			message: "You are now registered as #{user.username}."
		}.to_json
	end

	# login route
	post '/login' do
		username = @payload[:username]
		password = @payload[:password]

		user = user.find_by username: username

		if user && user.authenticate(password)
			session[:logged_in] = true
			session[:username] = username
			session[:user_id] = user.id
			{
				success: true,
				user_id: user.id,
				username: username,
				message: "Login successful. Cookie created."
			}.to_json
		else
			{
				success: false,
				message: "Invalid username or password."
			}.to_json
		end
	end

	# show route
	get '/:id' do
		shown_user = user.find params[:id]
		{
			success: true,
			message: "Here's more information about #{shown_user.username}.",
			shown_user: shown_user
		}.to_json
	end

	# edit route
	put '/:id' do
		updated_user = user.find params[:id]
		updated_user.username = @payload[:username]
		# not sure if this actually will update the password when they login, but it works in postman
		updated_user.password_digest = @payload[:password]
		updated_user.name = @payload[:name]
		updated_user.school = @payload[:school]
		updated_user.grade = @payload[:grade]
		updated_user.email = @payload[:email]
		updated_user.lesson_location = @payload[:lesson_location]
		updated_user.student_phone = @payload[:student_phone]
		updated_user.text_student = @payload[:text_student]
		updated_user.parent_phone = @payload[:parent_phone]
		updated_user.text_parent = @payload[:text_parent]
		updated_user.lesson_day = @payload[:lesson_day]
		updated_user.lesson_time = @payload[:lesson_time]
		updated_user.additional_info = @payload[:additional_info]

		updated_user.save
		
		{
			success: true,
			message: "#{updated_user.username} successfully updated.",
			updated_user: updated_user
		}.to_json
	end

	# delete route
	delete '/:id' do
		deleted_user = user.find params[:id]
		deleted_user.destroy
		{
			success: true,
			message: "#{deleted_user.username} successfully deleted."
		}.to_json
	end
end
