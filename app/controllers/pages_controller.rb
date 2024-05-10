class PagesController < ApplicationController 
  def square
    render({:template => "calc_templates/square"})
  end 
  def square_out 
    @num_square = params.fetch("number").to_f
    @square = @num_square**2.to_f
    render({:template => "calc_templates/square_out"})
  end 
  def square_root 
    render({:template => "calc_templates/square_root"})
  end 
  def square_root_out 
    @num = params.fetch("user_number").to_f  
    @square_root = CMath.sqrt(@num)
    render({:template => "calc_templates/square_root_out"})
  end 
  def payment 
    render({:template => "calc_templates/payment"})
  end 
  def payment_out 
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f
    @pv = params.fetch("user_pv").to_f
    render({:template => "calc_templates/payment_out"})
  end 
  def random 
    render({:template => "calc_templates/random"})
  end 
  def random_out
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    if @min < @max 
      @rand = rand(@min..@max)
    else 
      @rand = ""
    end 
    render({:template => "calc_templates/random_out"})
  end 
end 
