class PoolTablesController < ApplicationController
  def index
    @pool_tables = PoolTable.page(params[:page]).per(10)

    render("pool_tables/index.html.erb")
  end

  def show
    @bookmark = Bookmark.new
    @pool_table = PoolTable.find(params[:id])

    render("pool_tables/show.html.erb")
  end

  def new
    @pool_table = PoolTable.new

    render("pool_tables/new.html.erb")
  end

  def create
    @pool_table = PoolTable.new

    @pool_table.pool_table_name = params[:pool_table_name]
    @pool_table.price = params[:price]
    @pool_table.size = params[:size]
    @pool_table.pool_table_pic = params[:pool_table_pic]
    @pool_table.venue_id = params[:venue_id]

    save_status = @pool_table.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/pool_tables/new", "/create_pool_table"
        redirect_to("/pool_tables")
      else
        redirect_back(:fallback_location => "/", :notice => "Pool table created successfully.")
      end
    else
      render("pool_tables/new.html.erb")
    end
  end

  def edit
    @pool_table = PoolTable.find(params[:id])

    render("pool_tables/edit.html.erb")
  end

  def update
    @pool_table = PoolTable.find(params[:id])

    @pool_table.pool_table_name = params[:pool_table_name]
    @pool_table.price = params[:price]
    @pool_table.size = params[:size]
    @pool_table.pool_table_pic = params[:pool_table_pic]
    @pool_table.venue_id = params[:venue_id]

    save_status = @pool_table.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/pool_tables/#{@pool_table.id}/edit", "/update_pool_table"
        redirect_to("/pool_tables/#{@pool_table.id}", :notice => "Pool table updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Pool table updated successfully.")
      end
    else
      render("pool_tables/edit.html.erb")
    end
  end

  def destroy
    @pool_table = PoolTable.find(params[:id])

    @pool_table.destroy

    if URI(request.referer).path == "/pool_tables/#{@pool_table.id}"
      redirect_to("/", :notice => "Pool table deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Pool table deleted.")
    end
  end
end
