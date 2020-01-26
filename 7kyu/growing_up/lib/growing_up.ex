defmodule Kata do
  def growing_plant(up_speed, down_speed, desired_height) do
    grow_plant_one_more_day(1, 0, up_speed, down_speed, desired_height)
  end
  def grow_plant_one_more_day(day, current_height, up_speed, down_speed, desired_height) do
    current_height = current_height + up_speed
    if (current_height< desired_height) do
      current_height = current_height - down_speed
      grow_plant_one_more_day(day+1,current_height, up_speed, down_speed, desired_height)
    else
      day
    end
  end
end
