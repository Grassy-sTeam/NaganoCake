class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all.page(params[:page]).per(5)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:success] = "会員情報を変更しました"
      redirect_to admin_customer_path(@customer)
    else
      render :edit
    end
  end

  private
	def customer_params
	  params.require(:customer).permit(:first_name,:last_name,:kana_first_name,:kana_last_name,:postal_code,:address,:telephone_number,:email,:is_deleted)
	end
end
