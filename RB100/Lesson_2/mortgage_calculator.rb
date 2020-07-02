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
require "pry"

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

def format_percent(percent)
  # Find percent or %
  regex = /[+-]?(?=[^+-\/*^])\d+(\.\d+)*/
  is_match = regex.match(percent)
  if is_match
    is_match[0]
  else
    false
  end

  #if !regex.nil? && valid_number?(percent)
  #else

end

# TODO: change this from a tryadic function to a config object
def get_monthly_payment(loan_config)
  numerator = loan_config[:monthly_interest_rate]
  denominator = (1 - (1 + loan_config[:monthly_interest_rate])**(-loan_config[:duration]))
  loan_config[:amount] * (numerator / denominator) 
end


def valid_number?(num)
  # Are we dealing with a Number or a Float? Both are valid
  # Double check this logic, write some tests for it
  Float(num) || /^-?\d+$/.match(num)
end

def get_monthly_interest_rate(apr)
  fractional_apr = apr / 100
  fractional_apr / 12
end

def get_loan_info
  # TODO: maybe we can use procs and blocks to persist data
  # WIth the goal being to remember the previous entry if the user fails to input a good APR, that way they won't have to enter the loan amount as well as the apr again.
  loan_amount = prompt_user("How much money will you need for your loan (e.g. 100000)?")
  unless valid_number?(loan_amount)
    prompt("Whoops, that loan amount isn't valid, try again")
    get_loan_info() 
  end
  loan_apr = format_percent(prompt_user("What APR are you getting (e.g. 4.02)?"))
  unless loan_apr
    prompt("Whoops, that APR isn't valid, try again")
    get_loan_info()
  end

  # TODO: allow the user to input a syntax similar to this (3y 18m) and parse it.
  loan_duration = prompt_user("How long will you have this loan in months (e.g. 48)?").to_f
  return loan_info = {
    amount: loan_amount.to_f,
    # TODO: Convert this to monthly
    monthly_interest_rate: get_monthly_interest_rate(loan_apr.to_f),
    duration: loan_duration
  }
end
## END | Utils
## Start | Main
def mortgage_calculator
  loan_info = get_loan_info()
  monthly_payment = get_monthly_payment(loan_info)

  puts "Your total monthly payment is $#{monthly_payment}"
end
## END | Main

mortgage_calculator()

__END__
