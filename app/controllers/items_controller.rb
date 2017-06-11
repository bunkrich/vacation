class ItemsController < ApplicationController
  def show
  end

  def new
    @trip = Trip.new
    puts params[:trip_id]
    puts "****************************"
    @trip = Trip.find(params[:trip_id])
    puts @trip.inspect
    puts "****************************"
    @item = Item.new
    puts @item.inspect
    puts "****************************"

  end

  def create
    user = User.first
    trip = Trip.find_by(id: params[:trip_id])
    @item = user.items.new(item_params)
    @item.trip = trip
    if @item.save
      puts "⭐️⭐️⭐️⭐️⭐️  ITEM WAS SAVED ⭐️⭐️⭐️⭐️⭐️⭐️"
      puts @item.inspect
      puts "⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️"
      redirect_to action: "show", id: @item.id
    else
      puts "🔴 🔴  DID NOT SAVE!!! 🔴 🔴 "
      puts @item.inspect
      puts "🔴 🔴 🔴 🔴 🔴 🔴 🔴 🔴 🔴 🔴 🔴"
      @trip = Trip.find_by(id: params[:trip_id])
      @item = Item.new
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:title, :body, :address, :image, :date, :lookup, :category, :user, :trip)
  end
end
