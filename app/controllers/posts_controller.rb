class PostsController < ApplicationController
    
    
    # 各アクションが呼び出される前に実行する(%iは、シンボルの配列を作成)
    before_action :set_target_post, only: %i[show edit update destroy]
  
    def index
      # 投稿データを全て取得、またインスタンス変数なのでViewで参照可能
        @posts = Post.page(params[:page])
    end

    def new
        @post = Post.new(flash[:board])
    end
    
    def create
        post = Post.new(post_params)
        if post.save
            flash[:notice] = "「#{post.title}」の記事が投稿されました!"
            redirect_to post
        else
            redirect_to new_post_path, flash: { post: post, 
                        error_messages: post.errors.full_messages }
        end
    end
    
    def show
        # @comment = @post.comments.new
        @comment = Comment.new(post_id: @post.id)
    end
    
    def edit
      
    end
    
    def update
        @post.update(post_params)
        flash[:notice] = "「#{@post.title}」の記事を更新しました!"
        redirect_to @post
    end
    
    # 削除機能
    def destroy
        @post.delete
        flash[:notice] = "「#{@post.title}」の記事を削除しました!"
        redirect_to posts_path
    end

    private

    # paramsから欲しいデータのみ抽出
    def post_params
        params.require(:post).permit(:name, :title, :content)
    end
    
    # アクションが呼び出される前に実行したい処理を記述
    def set_target_post
        @post = Post.find(params[:id])
    end
end