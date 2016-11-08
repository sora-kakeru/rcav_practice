class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square
    @number = params[:number].to_f
    render("square.html.erb")
  end
  def square_root
    @number = params[:number].to_f
    @root = Math.sqrt(@number)*100
    @result = @root.round/100.00
    render("square_root.html.erb")
  end
  def random
    @number_1 = params[:number_1].to_i
    @number_2 = params[:number_2].to_i
    @rand = rand (@number_1..@number_2)
    render("random.html.erb")
  end
  def payment
    @rate = params[:rate].to_f
    @year = params[:year].to_i
    @amount = params[:amount].to_i
    @monthly_payment_1 = (@rate/120000+(@rate/120000/((1+@rate/120000)**(@year*12)-1)))*@amount*100
    @monthly_payment_2 = @monthly_payment_1.round/100.00
    render("payment.html.erb")
  end
end
