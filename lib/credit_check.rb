require "./credit_check_class.rb"

credit_check = CreditCheck.new
credit_check.valid_number?(5541808923795240)
credit_check.valid_number?(5541801923795240)
credit_check.validation_output(5541808923795240)
credit_check.validation_output(5541801923795240)
