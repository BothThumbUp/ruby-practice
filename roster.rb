def organize_list(list)
  names = list.split(",").sort

  names.each do |name|
    p name.strip
  end
end
