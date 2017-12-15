class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment, include: ['commented']
  end

  # POST /comments
  def create
    byebug
    @comment = Comment.new(comment_params)
    byebug
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      # params.require(:comment).permit(:body, :commented_id, :commented_type)
      res = ActiveModelSerializers::Deserialization.jsonapi_parse(params, polymorphic: [:commented])  
      res[:commented_type] = res[:commented_type].singularize.capitalize
      res
    end
end
