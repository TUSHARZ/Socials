class FriendshipsController < ApplicationController




def new

@friend = Friendship.new()
@myid=params[:id]

@friend.user_id = current_user.id


@friend.friend_id = params[:id]
@friend.save






end

def index
if user_signed_in?
	@user=User.all





end



end

end
