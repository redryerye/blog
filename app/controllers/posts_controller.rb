class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    # @posts = Post.all('created_at DESC')
  end

  def show
    @post = Post.friendly.find_by!(title: params[:title])
    # @post = Post.where(params[:id]).take!
    # @post = current_user.posts.find(params[:id])

    # Select posts
    @entry = 'entry/' + @post.id.to_s

    # @posts = Post.order("created_at desc").limit(4).offset(1)
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
