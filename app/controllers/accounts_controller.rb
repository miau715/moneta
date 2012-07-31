class AccountsController < ApplicationController

def index
  @accounts = Account.all
end

def show
  @account = Account.find(params[:id])
  @tracks = @account.tracks
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

  redirect_to accounts_path
end

end
