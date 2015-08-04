
post "/accounts/new" do
  Account.create(social_network: params[:social_network],
                 username: params[:username],
                 user_id: current_user.id )
  redirect "/users/#{current_user.id}"
end
