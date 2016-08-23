class PostsController < ApplicationController

  def create
    @post = Post.new(content: params[:post][:content], user_id: current_user.id)
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Photo was successfully created.' }
        # format.json { render :show, status: :created, location: @post }
      else
        format.html { render new_home_path(@post) }
        # format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def post_params
      params.require(:post).permit(:content, :user_id)
    end
end
