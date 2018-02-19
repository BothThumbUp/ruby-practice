def stripnsqueeze
  raw_data = open("Sheet1.csv")
  each_cell_array = raw_data.read.split(",")

  each_cell_array.each do |array|
    array.strip!
    array.squeeze!(" ")
  end
  new_content = each_cell_array.join(",")
  p new_content
end

stripnsqueeze
