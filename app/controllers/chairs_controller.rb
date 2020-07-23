class ChairsController < ApplicationController
  def index
    @chairs = Chair.all
    render "index.html.erb"
  end

  def show
    @chair = Chair.find_by(id: params[:id])
    render "show.html.erb"
  end

  def create
    @chair = Chair.new(
      color: params[:color],
      weight: params[:weight],
      legs: params[:legs],
      style: params[:style],
    )
    @chair.save
    redirect_to "/chairs/#{@chair.id}"

    def update
      @chair = Chair.find_by(id: params[:id])
      @chair.color = params [:color]
      @chair.weight = params [:weight]
      @chair.legs = params [:legs]
      @chair.style = params [:style]
    end

    def edit
      @chair = Chair.find_by(id: params[:id])
      render #something
    end
  end
end
