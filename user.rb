class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         belongs_to :post_images
end


  def create
    @user_post = Userpost.new
    @user_post.post = post.find(params[:post_id])
    @user_post.user = current_user
    if @user_post.save!
      redirect_to @user_post.post
    end
  end

  def destroy
    @user_post = Userpost.find_by(post_id: params[:post_id])
    @user_post.destroy
    redirect_to @user_post.post
  end

