require_relative "utils"
include Utils

def get_loan_info
  loan_info = {}

  loan_info[:amount] = get_loan_amount()
  raw_apr = get_apr()
  loan_info[:monthly_interest_rate] = get_monthly_interest_rate(raw_apr.to_f)

  # TODO: allow the user to input a syntax similar to this (3y 18m) and parse
  loan_info[:duration] = ask("How long will you have this loan in months \
                              (e.g. 48)?").to_f
  loan_info
end

def mortgage_calculator
  puts "Welcome to the mortgage calculator!"
  loan_info = get_loan_info()
  monthly_payment = get_monthly_payment(loan_info)

  puts "Your total monthly payment is $#{monthly_payment}"
  answer = ask("Do you want to calculate again (type y or n)?")
  if answer.downcase.eql?("y")
    puts "Alrighty we are spinning up again!"
    mortgage_calculator()
  else
    puts "Goodbye!"
  end
end

mortgage_calculator()
