class TagsController
  def index
    @tags = Tag.find(:all)
  end

  def show
    @tag = Tag.find(params[:id])
    @posts = Posts.find_tagged_with(@tag).paginate(:page => params[:page], :per_page => 5)
  end
end
