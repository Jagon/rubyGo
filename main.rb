# To change this template, choose Tools | Templates
# and open the template in the editor.
require 'rubygems'
require 'wx'

include Wx

class GUI < Wx::App
  def do_click(event)
    puts event.get_col.to_s + " " + event.get_row.to_s

  end
  def on_init
    window = Wx::Frame.new(nil, -1, "Hime!")
    
    my_grid = Grid.new(window,1)
    my_grid.create_grid(9,9)
    my_grid.auto_size_columns
    my_grid.auto_size_rows
    window.show
    my_grid.evt_grid_cell_left_click(){|e| do_click(e)}
    
  end
end

GUI.new.main_loop