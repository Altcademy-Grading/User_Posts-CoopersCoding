class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        new_post = Post.create(content: params[:content])
    render json: { post: new_post }
    end
end
