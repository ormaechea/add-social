get '/' do
 erb :"sessions/login"
end

get '/signup' do
  erb :"sessions/signup"
end

get '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user
    if @user.password_hash == params[:password_hash]
      login(@user)
      redirect "users/#{@user.id}"
    end
  else
    redirect "/"
  end
end


get '/users/:id' do
@number_accounts = current_user.accounts.order(:id)
  erb :"/users/show"
end

put '/users/:id' do
  @account = Account.find_by(user_id: current_user.id,
    social_network: params[:social_network])
  @account.update_attributes(username: params[:username])
  redirect "/users/#{current_user.id}"
end

delete '/users/:id/:social_network' do
  p "HEYYYYYY"
  p @account = Account.find_by(user_id: current_user.id,
    social_network: params[:social_network])
  p params
  @account.delete
  redirect "/users/#{current_user.id}"
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




