class BankAccount
    attr_reader :check_bal, :sav_bal

    @@num_of_accounts = 0
    @@account_number = 0

  def initialize
    @check_bal = 0
    @sav_bal = 0
    @intrist = 0.01
    @@num_of_accounts += 1
    @@account_number = implicitly_accounts
    
  end
  def implicitly_accounts
    accounts
    
  end
  def checking
    puts "you checking balance is #{@checking_balance}"
    self
  end
  def saving
    puts "your saveings balance is #{@saving_balance}"
    self
  end
  def deposit (num, acc)
    if acc == "sav_bal"
      @sav_bal += num
      puts "you deposit #{num} to saveings, current balance is #{@sav_bal}"
    end
    if acc == "check_bal"
      @check_bal += num
      puts "you deposit #{num} to checking, current balance is #{@check_bal}"
    end
    self
  end
  def withdraw (num, acc)
    if acc == "check_bal"
      if num > @check_bal
        puts "no more money"
        
      else
        @check_bal -= num
        puts "you withdrew #{num} from checking, current balance is #{@check_bal}"
      end
    end
    if acc == "sav_bal"
      if num > @sav_bal
        puts "no more money"
        
      else
        @sav_bal -= num
        puts "you withdrew #{num} from saveings, current balance is #{@sav_bal}"
      end
    end
    self
  end

  def all_money
    total = @sav_bal + @check_bal
    puts "$#{total} is how much money you have"
    self
  end
  def num_accounts
    puts "There are #{@num_of_accounts}"
    self
  end

  def account_infomation
    puts "Account number #{@@account_number}, intrist rate is #{@intrist}%, "
    self
  end
  private
    def accounts
      thisaccount = (0..9).map {rand(0..9)}.join("")
      puts "Account number is " + thisaccount
      return thisaccount
    end
end

we = BankAccount.new
we.account_infomation

