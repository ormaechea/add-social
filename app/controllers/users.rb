get '/home' do
 erb :"sessions/login"
end

get '/signup' do
  erb :"sessions/signup"
end

get '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user.password == params[:password_hash]
    login(@user)
    redirect "users/#{@user.id}"
  else
    redirect "/home"
  end
end


get '/users/:id' do
  erb :'/users/show'
end

post '/users/new' do
 @user = User.create(username: params[:username],
                     email: params[:email],
                     password_hash: params[:password_hash])
 login(@user)
 redirect "/users/#{@user.id}"
end

get '/logout' do
  session.clear
  erb :"sessions/login"
end




