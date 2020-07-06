module Utils
  def prompt(msg)
    puts "=| #{msg}"
  end

  def get_loan_amount
    loop do
      amount = ask("How much money will you need for your loan (e.g. 100000)?")
      unless !amount.empty? && valid_number?(amount)
        prompt("Whoops, that loan amount isn't valid, try again")
        next
      end
      return amount
    end
  end

  def get_apr
    loop do
      loan_apr = ask("What APR are you getting (e.g. 4.02)?")
      unless !loan_apr.empty?
        prompt("Whoops, that APR isn't valid, try again")
        next
      end
      raw_apr = format_percent(loan_apr)
      return raw_apr if raw_apr
      puts "Your APR was not formatted correctly. \
            Try something like this 5.02 or 5.02 %"
      next
    end
  end

  def ask(question)
    # Return user input
    puts question
    gets.chomp
  end

  def format_percent(percent)
    # Find percent or %
    regex = %r(/[+-]?(?=[^+-\/*^])\d+(\.\d+)*/)
    is_match = regex.match(percent)
    if is_match
      is_match[0]
    else
      false
    end
  end

  def get_monthly_payment(loan_config)
    numerator = loan_config[:monthly_interest_rate]
    denominator = (1 - \
                  (1 + loan_config[:monthly_interest_rate])\
                    **(-loan_config[:duration]))
    loan_config[:amount] * (numerator / denominator)
  end

  def valid_number?(num)
    /^-?\d+$/.match(num) && num.to_i > 0
  end

  def get_monthly_interest_rate(apr)
    fractional_apr = apr / 100
    fractional_apr / 12
  end
end
