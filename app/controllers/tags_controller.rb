class TagsController
  def index
    @tags = Tag.find(:all)
  end

  def show
    @tag = Tag.find(params[:id])
    @posts = Posts.find_tagged_with(@tag)
  end
end
