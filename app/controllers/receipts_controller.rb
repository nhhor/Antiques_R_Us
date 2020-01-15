class ReceiptsController < ApplicationController

  def index
    @receipts = Receipt.all
    render :index
  end

  def new
    @receipt = Receipt.new
    render :new
  end

  def create
    @receipt = Receipt.new
    if @receipt.save
      render :show
    else
      render :new
    end
  end

  def edit
    @receipt = Receipt.find(params[:id])
    render :edit
  end

  def show
    @receipt = Receipt.find(params[:id])
    @purchases = @receipt.purchases.all


    render :show
  end

  def update
    @receipt = Receipt.find(params[:id])
    if @receipt.update(receipt_params)
      redirect_to receipts_path
    else
      render :edit
    end
  end

  def destroy
    @receipt = Receipt.find(params[:id])
    @receipt.destroy
    redirect_to receipts_path
  end

  # private
  # def receipt_params
  #   params.require().permit()
  # end
end
