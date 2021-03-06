class TracksController < ApplicationController
  layout "plain", :only => [:new, :edit]

  def index
    @account = Account.find(params[:account_id])
    redirect_to account_path(@account)
  end
  def show
    @account = Account.find(params[:account_id])
    @track = @account.tracks.find(params[:id])
  end
  def new
    @account = Account.find(params[:account_id])
    @track = @account.tracks.build
    @outcome_categories = Category.outcome
    @income_categories = Category.income
  end
  def create
    @account = Account.find(params[:account_id])
    @track = @account.tracks.build(params[:track])
    if @track.save
      redirect_to account_path(@account)
    end
  end
  def edit
    @account = Account.find(params[:account_id])
    @track = @account.tracks.find(params[:id])
    @outcome_categories = Category.outcome
    @income_categories = Category.income
  end
  def update
    @account = Account.find(params[:account_id])
    @track = @account.tracks.find(params[:id])
    if @track.update_attributes(params[:track])
      redirect_to account_path(@account)
    end
  end
  def destroy
    @account = Account.find(params[:account_id])
    @track = @account.tracks.find(params[:id])
    if @track.destroy 
      redirect_to account_path(@account)
    end
  end
end
