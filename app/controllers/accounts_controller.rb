class AccountsController < ApplicationController
before_filter :authenticate_user!

def index
  @accounts = Account.all
end

def show
  @accounts = Account.all
  @account = Account.find(params[:id])
  @categories = Category.all
  
  #篩選用  
  @start_date = params[:start_date] || ''
  @end_date = params[:end_date] || ''

  if @start_date!=''
    @tracks = @account.tracks.where("exchange_date >= ?", @start_date)
    @status = 'start'
    if @end_date!=''
      @tracks = @account.tracks.where("exchange_date >= ? AND exchange_date <= ?", @start_date, @end_date)
      @status = 'both'
    end
  elsif @end_date!=''
    @tracks = @account.tracks.where("exchange_date <= ?", @end_date)
    @status = 'end'
  else
    @tracks = @account.tracks
    @status = 'none'
  end

  #統計圖表用
  @category_statistics = @categories.map { |c| %{["#{c.name}",#{@tracks.where("category_id == ?", c.id).size}]}}.join(',')

  #排序和分頁
  @tracks = @tracks.order_by_date.paginate(:page => params[:page], :per_page => 10 )
end

def new
  @account = Account.new
end

def create
  @account = Account.create(params[:account])

  redirect_to accounts_path
end

def edit
  @account = Account.find(params[:id])
end

def update
  @account = Account.find(params[:id])
  @account = Account.update_attributes(params[:account])

  redirect_to accounts_path
end

def destroy
  @account = Account.find(params[:id])
  @account.destroy
end

end
