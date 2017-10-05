class LikesController < ApplicationController




def new
# container-variables
@class=params[:li]
@id=params[:id]


if @class=="Post"
# check if user has already liked that post exists
@here=Post.find(params[:id])
if Post.find(params[:id]).likes.find_by_user_id(current_user.id) == nil



# creating a new like of user for given post
@like=Like.new();
@like.user_id=current_user.id
@like.likeable_type=params[:li]
@like.likeable_id=params[:id]
@like.save
@liked="Unlike"

#if user has already liked a post
else
 @here.likes.find_by_user_id(current_user.id).destroy
 @liked="Like"

end

else

@here=Comment.find(params[:id])
if Comment.find(params[:id]).likes.find_by_user_id(current_user.id) == nil



# creating a new like of user for given post
@like=Like.new();
@like.user_id=current_user.id
@like.likeable_type=params[:li]
@like.likeable_id=params[:id]
@like.save
@liked="Unlike"

#if user has already liked a post
else
 @here.likes.find_by_user_id(current_user.id).destroy
 @liked="Like"
end
end


# else
# if params[:li]=="Comment"
# @here=Comment.find(params[:id])
# @here.likes.find_by_user_id(current_user).destroy
# end

# if params[:li]=="Post"
# @here=Post.find(params[:id])

# #@here.likes.find_by_user_id(current_user).destroy
# end

# @liked="unlike"
# @here2=Post.find(params[:p])

# @class=params[:li]
# @id=params[:id]






# end













end

end

