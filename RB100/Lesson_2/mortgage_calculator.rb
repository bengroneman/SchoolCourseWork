require "pry"

require_relative "utils"
include Utils

def get_loan_info
  # TODO: maybe we can use procs and blocks to persist data
  # WIth the goal being to remember the previous entry if the user fails to input a good APR, that way they won't have to enter the loan amount as well as the apr again.
  loan_info = {}
  loop do
    amount = prompt_user("How much money will you need for your loan (e.g. 100000)?")
    unless !amount.empty? && valid_number?(amount)
      prompt("Whoops, that loan amount isn't valid, try again")
      next
    end
    loan_info[:amount] = amount.to_f
    break
  end

  loop do
    loan_apr = prompt_user("What APR are you getting (e.g. 4.02)?")
    unless !loan_apr.empty?
      prompt("Whoops, that APR isn't valid, try again")
      next
    end
    raw_apr = format_percent(loan_apr)
    if raw_apr
      loan_info[:monthly_interest_rate] = get_monthly_interest_rate(raw_apr.to_f)
    else
      puts "Your APR was not formatted correctly. Try something like this 5.02 or %5.02"
      next
    end
    break
  end

  # TODO: allow the user to input a syntax similar to this (3y 18m) and parse it.
  loan_info[:duration] = prompt_user("How long will you have this loan in months (e.g. 48)?").to_f
  return loan_info
end

def mortgage_calculator
  puts "Welcome to the mortgage calculator!"
  loan_info = get_loan_info()
  monthly_payment = get_monthly_payment(loan_info)

  puts "Your total monthly payment is $#{monthly_payment}"
  answer = prompt_user("Do you want to calculate again (type y or n)?")
  if answer.downcase.eql?("y")
    puts "Goodbye!"
  else
    puts "Alrighty we are spinning up again!"
    mortgage_calculator()
  end
end

mortgage_calculator()

__END__
