class AccountsController < ApplicationController

def index
  @accounts = Account.all
end

def show
  @accounts = Account.all
  @account = Account.find(params[:id])
  @tracks = @account.tracks.order_by_date.paginate(:page => params[:page], :per_page => 20 )
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
