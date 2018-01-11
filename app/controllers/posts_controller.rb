class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    if (params[:filter].present?)
      @posts = Post.where(category: params[:filter], published: true)
      # if (params[:filter] == "hero")
      #   @posts = Post.where(category: params[:filter], published: true)
      # elsif (params[:filter] == "sharevision")
      #   @posts = Post.where(category: params[:filter], published: true)
      # elsif (params[:filter] == "universe")
      #   @posts = Post.where(published: true)
      # end
    else
      @posts = Post.where(published: true)
    end

  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @prev_post = Post.where(["id < ?", @post.id]).where(published: true).last
    @next_post = Post.where(["id > ?", @post.id]).where(published: true).first
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save

        @mail_to = Setting.first().admin_email

        PostMailer.user_submit(@post, @mail_to).deliver_later

        # format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        # format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  # def update
  #   respond_to do |format|
  #     if @post.update(post_params)
  #       format.html { redirect_to @post, notice: 'Post was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @post }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @post.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /posts/1
  # DELETE /posts/1.json
  # def destroy
  #   @post.destroy
  #   respond_to do |format|
  #     format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:name, :position, :description, :category, :photo, :published, :hover_pos, :author_email, :author_social, :seo_title, :seo_description, :seo_keywords)
    end
end
