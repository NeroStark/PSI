module ApplicationHelper
  def display_value(value)
      value.present? ? value : 'Not available'
  end

  def display_mail_to(address, name = nil)
    address.present? ? mail_to(address, (name if name.present?)) : 'Not available'
  end
end
