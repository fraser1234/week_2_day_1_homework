require('minitest/autorun')
require('minitest/rg')
require_relative('../bank_account.rb')

class TestBankAccount < MiniTest::Test
  def test_account_name
    bank_account = BankAccount.new('Upul', 500, 'business')
    assert_equal('Upul', bank_account.holder_name)
  end

  def test_account
    bank_account = BankAccount.new('Upul', 500, 'business')
    assert_equal(500, bank_account.amount)
  end

  def test_type
    bank_amount = BankAccount.new('Upul', 500, 'business')
    assert_equal('business', bank_amount.type)
  end

  def test_set_account_name
    bank_account = BankAccount.new('Upul', 500, 'business')
    # bank_account.set_holder_name('Sian')
    bank_account.holder_name = 'Sian'
    assert_equal('Sian', bank_account.holder_name)
  end

  def test_set_amount
    bank_account = BankAccount.new('Upul', 500, 'business')
    # bank_account.set_amount(800)
    bank_account.amount = 800
    assert_equal(800, bank_account.amount)
  end

  def test_account_type
    bank_account = BankAccount.new('Upul', 500, 'business')
    # bank_account.set_type('personal')
    bank_account.type = 'personal'
    assert_equal('personal', bank_account.type)
  end

  def test_pay_into_account
    bank_account = BankAccount.new('Upul', 500, 'business')
    bank_account.pay_in(2)
    assert_equal(502, bank_account.amount)
  end

  def test_pay_monthly_fee
    bank_account_business = BankAccount.new('Upul', 500, 'business')
    bank_account_personal = BankAccount.new('Upul', 500, 'personal')
    bank_account_business.pay_monthly_fee
    bank_account_personal.pay_monthly_fee #dont need to disclose amount here
    assert_equal(450, bank_account_business.amount)
    assert_equal(490, bank_account_personal.amount)
  end

end
