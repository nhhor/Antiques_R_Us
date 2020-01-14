class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    render :index
  end

  def new
    @customer = Customer.new
    render :new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  def edit
    @customer = Customer.find(params[:id])
    render :edit
  end

  def show
    @customer = Customer.find(params[:id])
    render :show
  end

  def update
    @customer= Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customers_path
    else
      render :edit
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path
  end

  private
    def customer_params
      params.require(:customer).permit(:name)
    end

end
