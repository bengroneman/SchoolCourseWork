## Mortgage Calculator
## @Author: Ben Groneman
# Goal:
# To build an interactive CLI interface for a mortgage calculator
## Input:
  # loan_amount   = Number
  # APR           = Float
  # loan_duration = Time
## Output:
  # monthly_interest_rate   = Float
  # loan_duration_in_months = Time
  # monthly_payment         = Number

## Test cases:
  # https://www.calculator.net/loan-calculator.html
  # to_decimal("4.02") => .0402
  # to_decimal("4.02%") => .0402
  # to_decimal("4.02 %") => .0402

## Algorithm:
  # m = p * (j / (1 - (1 + j)**(-n)))
    # m = monthly payment
    # p = loan amount
    # j = monthly interest rate
    # n = loan duration in months
## Notes:
# If you're working with Annual Percentage Rate (APR),
# you'll need to convert that to a monthly interest rate.

## START | Utils
def prompt(msg)
  puts "=| #{msg}"
end

def prompt_user(question)
  # Return user input
  puts question
  gets.chomp
end

def get_loan_amount
  # Get the loan amount and parse it
  prompt_user("Enter your loan amount (e.g. $100000)")
end

def to_decimal(percent)

end

def get_monthly_interest_rate
  monthly_interest_rate = prompt_user("Enter your interest rate (e.g. 4.02%")
  to_decimal(monthly_interest_rate)
end

def get_monthly_payment(loan_amount, monthly_interest_rate, loan_duration_in_months)
  denominator = (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months))
  loan_amount * (monthly_interest_rate / denominator)
end


def valid_number?(number_str)
  begin
    Integer(number_str)
    return true
  rescue ArgumentError
    return false
  end
end
## END | Utils

## Start | Main
def mortgage_calculator

end
## END | Main

mortgage_calculator()

__END__
