class CalendarController < ApplicationController
  before_action :authenticate_user!

  # GET /
  def index
    @events = InvoicePayment.all
  end
end
