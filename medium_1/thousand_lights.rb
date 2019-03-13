# You have a bank of switches before you, numbered from 1 to n.
# Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them.
# You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on.
# On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on.
# You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4]
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


def switch_lights(num_switches)
  on_positions = Array.new(num_switches,true)
  return on_positions if num_switches == 1
  1.upto(num_switches) do |n|
    (n...num_switches).step(n + 1) do |to_switch|
      on_positions[to_switch] = !on_positions[to_switch]
    end
  end
  on_positions.map.with_index { |on_off,idx|  [idx, on_off] }
    .select {|idx, on_off| on_off }
    .inject([]) {|memo, (idx, on_off)| memo << idx + 1}
end

p switch_lights(5)
p switch_lights(10)


# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000) == switch_lights(1000)
