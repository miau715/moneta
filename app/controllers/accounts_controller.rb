class AccountsController < ApplicationController

def index
  @accounts = Account.all
end

def show
  @accounts = Account.all
  @account = Account.find(params[:id])
  
  @start_date = params[:start_date]
  @end_date = params[:end_date]
  if @start_date
    @tracks = @account.tracks.where("exchange_date > ?", @start_date).order_by_date.paginate(:page => params[:page], :per_page => 20 )
  else
    @tracks = @account.tracks.order_by_date.paginate(:page => params[:page], :per_page => 20 )
  end
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
