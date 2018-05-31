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
		users = User.all
		{
			success: true,
			message: "Here are all #{users.length} users.",
			users: users
		}.to_json
	end

	# logout route
	get '/logout' do
		email = session[:email]
		session.destroy
		{
			success: true,
			message: "#{email} has logged out."
		}.to_json
	end

	# register route
	post '/register' do
		user = User.new
		user.email = @payload[:email]
		user.password = @payload[:password]
		user.name = @payload[:name]
		user.school = @payload[:school]
		user.grade = @payload[:grade]
		user.student_phone = @payload[:student_phone]
		user.text_student = @payload[:text_student]
		user.parent_phone = @payload[:parent_phone]
		user.text_parent = @payload[:text_parent]
		user.lesson_location = @payload[:lesson_location]
		user.lesson_day = @payload[:lesson_day]
		user.lesson_time = @payload[:lesson_time]
		user.additional_info = @payload[:additional_info]

		user.save

		session[:logged_in]	= true
		session[:email] = user.email
		session[:user_id] = user.id
		session[:name] = user.name
		session[:school] = user.school
		session[:grade] = user.grade
		session[:student_phone] = user.student_phone
		session[:text_student] = user.text_student
		session[:parent_phone] = user.parent_phone
		session[:text_parent] = user.text_parent
		session[:lesson_location] = user.lesson_location
		session[:lesson_day] = user.lesson_day
		session[:lesson_time] = user.lesson_time
		session[:additional_info] = user.additional_info

		{
			success: true,
			message: "You are now registered as #{user.email}."
		}.to_json
	end

	# login route
	post '/login' do
		email = @payload[:email]
		password = @payload[:password]

		user = User.find_by email: email

		if user && user.authenticate(password)
			session[:logged_in] = true
			session[:email] = email
			session[:user_id] = user.id
			session[:name] = user.name
			session[:school] = user.school
			session[:grade] = user.grade
			session[:student_phone] = user.student_phone
			session[:text_student] = user.text_student
			session[:parent_phone] = user.parent_phone
			session[:text_parent] = user.text_parent
			session[:lesson_location] = user.lesson_location
			session[:lesson_day] = user.lesson_day
			session[:lesson_time] = user.lesson_time
			session[:additional_info] = user.additional_info
			{
				success: true,
				user_id: user.id,
				email: user.email,
				message: "Login successful. Cookie created."
			}.to_json
		else
			{
				success: false,
				message: "Invalid email or password."
			}.to_json
		end
	end

	# show route
	get '/:id' do
		shown_user = User.find params[:id]
		{
			success: true,
			message: "Here's more information about #{shown_user.email}.",
			shown_user: shown_user
		}.to_json
	end

	# edit route
	put '/:id' do
		updated_user = User.find params[:id]
		updated_user.email = @payload[:email]
		# not sure if this actually will update the password when they login, but it works in postman
		updated_user.password_digest = @payload[:password]
		updated_user.name = @payload[:name]
		updated_user.school = @payload[:school]
		updated_user.grade = @payload[:grade]
		updated_user.student_phone = @payload[:student_phone]
		updated_user.text_student = @payload[:text_student]
		updated_user.parent_phone = @payload[:parent_phone]
		updated_user.text_parent = @payload[:text_parent]
		updated_user.lesson_location = @payload[:lesson_location]
		updated_user.lesson_day = @payload[:lesson_day]
		updated_user.lesson_time = @payload[:lesson_time]
		updated_user.additional_info = @payload[:additional_info]

		updated_user.save
		
		{
			success: true,
			message: "#{updated_user.email} successfully updated.",
			updated_user: updated_user
		}.to_json
	end

	# delete route
	delete '/:id' do
		deleted_user = User.find params[:id]
		deleted_user.destroy
		{
			success: true,
			message: "#{deleted_user.email} successfully deleted."
		}.to_json
	end
end
