class CalendarController < ApplicationController
  # GET /
  def index
    @events = InvoicePayment.all
  end
end
