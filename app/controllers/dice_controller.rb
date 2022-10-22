class DiceController < ApplicationController

  def roll_dice

    @num_dice = params.fetch("number_of_dice")
    @num_sides = params.fetch("how_many_sides")

    @array_of_rolls = Array.new

    @num_dice.to_i.times do
      
      each_role = rand(1...@num_sides.to_i+1)

      @array_of_rolls.push(each_role)
    end

    render({ :template => "dice_views/roll_dice_template.html.erb"})

  end

end
