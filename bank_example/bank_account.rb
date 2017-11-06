class BankAccount #class
  attr_accessor :holder_name, :amount, :type
  # attr_writer :holder_name, :amount, :type

  def initialize(input_holder_name, input_amount, input_type)
    @holder_name = input_holder_name #object/properties
    @amount = input_amount
    @type = input_type
  end

  def pay_in (value)
    @amount += value #just updating the amount
  end

  def pay_monthly_fee()
    @amount -= 50 if @type == 'business'
    @amount -= 10 if @type == 'personal'
  end



  # def holder_name
  #   return @holder_name #getter
  # end
  #
  # def amount
  #   return @amount
  # end
  #
  # def type
  #   return @type
  # end

  # def set_holder_name(name)
  #   @holder_name = name #setter
  # end
  #
  # def set_amount(amount)
  #   @amount = amount
  # end
  #
  # def set_type(type)
  #   @type = type
  # end

end
