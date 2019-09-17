class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @items = JSON.parse(@list.items) # Takes the large string and turns it into a JSON object
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
    @items = JSON.parse(@list.items) # Takes the large string and turns it into a JSON object
  end

  def create
    @list = List.new
    saveList(:new)
  end

  def update
    @list = List.find(params[:id])
    saveList(:edit)
  end

  def saveList(view)
    @list.title = params[:list][:title]
    @list.items = "{" # Outer brackets needed for valid JSON
    for i in 1..params[:nItems].to_i # Loops til 'number of items'
      @list.items += "
      \"#{i}\": {
        \"purchased\": \"#{params["purchased#{i}"]}\",
        \"name\": \"#{params["item#{i}"]}\",
        \"amount\": \"#{params["amount#{i}"]}\"
      }," # {},{},{},{} Separating items by commas, each brackets with fields is one grocery item; i = each loop
    end
    @list.items = @list.items.delete_suffix(",") # Deletes the last trailing comma 
    @list.items += "}"

    if @list.save
      flash[:notice] = "Your grocery list has been saved."
      redirect_to @list
    else
      flash.now[:alert] = "There was an error saving your grocery list. Please try again. If the problem persists, contact our help center."
      render view
    end
  end

  def destroy
    @list = List.find(params[:id])

    if @list.destroy
      flash[:notice] = "Your grocery list '#{@list.title}' was deleted."
      redirect_to lists_index_path
    else
      flash.now[:alert] = "There was an error deleting this grocery list. Please try again. If the problem persists, contact our help center."
      render :index
    end
  end

end
