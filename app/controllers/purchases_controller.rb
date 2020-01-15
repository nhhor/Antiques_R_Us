class PurchasesController < ApplicationController

  def index
    @receipt = Receipt.find(params[:receipt_id])
    @purchases = @receipt.purchases.all
    # render :index
    redirect_to receipts_path

  end

  def new
    @receipt = Receipt.find(params[:receipt_id])
    @purchase = @receipt.purchases.new
    @customers = Customer.all
    render :new
  end

  def create
    @receipt = Receipt.find(params[:receipt_id])
    @purchase = @receipt.purchases.new(purchase_params)

    if @purchase.save
      # render :new
      redirect_to new_receipt_purchase_path(@receipt)
    else
      render :new
    end

  end

  def edit
    @receipt = Receipt.find(params[:receipt_id])
    @purchase = Purchase.find(params[:id])
    render :edit
  end

  def show
    @receipt = Receipt.find(params[:receipt_id])
    @purchase = Purchase.find(params[:id])
    @customer = Customer.find(@purchase.customer_id)
    @product = Product.find(@purchase.product_id)

    render :show
  end

  def update
    @purchase= Purchase.find(params[:id])
    if @purchase.update(purchase_params)
      redirect_to receipt_path(@purchase.receipt)
    else
      render :edit
    end
  end

  def destroy
    @receipt = Receipt.find(params[:receipt_id])
    @purchase = @receipt.purchases.destroy

    # @purchase = Purchase.find(params[:id])
    # @purchase.destroy
    redirect_to receipt_purchases_path
  end

  private
    def purchase_params
      params.require(:purchase).permit(:product_id, :customer_id, :receipt_id, :date)
    end

end
