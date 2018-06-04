class PracticelogController < ApplicationController

	before do
    	payload_body = request.body.read

    	if(payload_body != "")
      		@payload = JSON.parse(payload_body).symbolize_keys
    	end
	end

	# get route
	get '/' do
		practicelogs = Practicelog.all
		{
			success: true,
			message: "Here are all #{practicelogs.length} practicelogs.",
			practicelogs: practicelogs
		}.to_json
	end

	# show route
	get '/:id' do
		shown_practicelog = Practicelog.find params[:id]
		{
			success: true,
			message: "Here is more information about the practice log.",
			shown_practicelog: shown_practicelog
		}.to_json
	end

	# create route
	post '/' do
		new_practicelog = Practicelog.new

		new_practicelog.song_name = @payload[:song_name]
		new_practicelog.goals = @payload[:goals]
		new_practicelog.time_practiced = @payload[:time_practiced]
		new_practicelog.date_practiced = @payload[:date_practiced]
		new_practicelog.user_id = @payload[:user_id]

		new_practicelog.save
		{
			success: true,
			message: "You have successfully created a new practice log.",
			new_practicelog: new_practicelog
		}.to_json

	end

	# edit route
	put '/:id' do
		updated_practicelog = Practicelog.find params[:id]
		updated_practicelog.song_name = @payload[:song_name]
		updated_practicelog.goals = @payload[:goals]
		updated_practicelog.time_practiced = @payload[:time_practiced]
		updated_practicelog.date_practiced = @payload[:date_practiced]
		updated_practicelog.user_id = @payload[:user_id]

		updated_practicelog.save
		{
			success: true,
			message: "You have successfully edited the practice log.",
			updated_practicelog: updated_practicelog
		}.to_json
	end

	# delete route
	delete '/:id' do
		deleted_practicelog = Practicelog.find params[:id]
		deleted_practicelog.destroy
		{
			success: true,
			message: "You have successfully deleted the practice log.",
			deleted_practicelog: deleted_practicelog
		}.to_json
	end
end
