class PostsController < ApplicationController

  def index
    puts "Welcome to index!!!!!!!!!!!!!!!!!"
    @posts = Post.all
  end

  def show
    puts "Welcome to show!!!!!!!!!!!!!!!!!"
    @post = Post.find(params[:id])
  end

  def new
    puts "Welcome to new!!!!!!!!!!!!!!!!!!!"
  end

  def create
    puts "Welcome to create!!!!!!!!!!!!!!!!"
    @post = Post.new(post_params)
    if(@post.save)
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    puts "Welcome to edit!!!!!!!!!!!!!!!!"
    @post = Post.find(params[:id])
  end

  def update
    puts "Update !!!!!!!!!!!!!!!!!!!"
    @post = Post.find(params[:id])
    # puts @post.inspect
    if(@post.update(post_params))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
