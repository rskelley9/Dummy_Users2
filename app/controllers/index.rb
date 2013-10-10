get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/new' do

		erb :login
end

post '/login' do
	@user = User.find_by_email(email: email)

	erb :profile
end

post '/create' do	

	email = params[:email]
	password = params[:password]

	session[:user_id] = @user.id

	@user = User.create(email: email, password: password)

	erb :profile
end
