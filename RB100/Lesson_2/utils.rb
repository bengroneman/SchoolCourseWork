module Utils 
  def prompt(msg)
    puts "=| #{msg}"
  end

  def prompt_user(question)
    # Return user input
    puts question

    gets.chomp
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

  def get_monthly_payment(loan_config)
    numerator = loan_config[:monthly_interest_rate]
    denominator = (1 - (1 + loan_config[:monthly_interest_rate])**(-loan_config[:duration]))
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