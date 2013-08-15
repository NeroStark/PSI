class InvoicePaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_invoice_payment, only: [:pay, :unpay]
  
  # GET /invoice_payments/1/pay
  def pay
    if @invoice_payment.update_attributes(paid: true)
	  redirect_to root_path, notice: 'Invoice has been successfully marked as paid.'
	else
	  redirect_to root_path, alert: 'Invoice cannot be marked as paid.'
	end
  end
  
  # GET /invoice_payments/1/unpay
  def unpay
    if @invoice_payment.update_attributes(paid: false)
	  redirect_to root_path, notice: 'Invoice has been successfully marked as unpaid.'
	else
	  redirect_to root_path, alert: 'Invoice cannot be marked as unpaid.'
	end
  end
  
  private
    def set_invoice_payment
	  @invoice_payment = InvoicePayment.find(params[:id])
	end
end
