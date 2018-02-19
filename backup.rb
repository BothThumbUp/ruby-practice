class CsvTransformer

  SPECIAL_CHAR = ["Š", "Ž", "š", "ž", "Ÿ", "À", "Á", "Â", "Ã", "Ä", "Å", "Ç", "È",
    "É", "Ê", "Ë", "Ì", "Í", "Î", "Ï", "Ð", "Ñ", "Ò", "Ó", "Ô", "Õ", "Ö", "Ù", "Ú",
    "Û", "Ü", "Ý", "à", "á", "â", "ã", "ä", "å", "ç", "è", "é", "ê", "ë", "ì", "í",
    "î", "ï", "ī", "ð", "ñ", "ò", "ó", "ô", "õ", "ö", "œ", "ù", "ú", "û", "ü", "ý", "ÿ"].freeze


  NORMAL_CHAR = ["S", "Z", "s", "z", "Y", "A", "A", "A", "A", "A", "A", "C", "E",
    "E", "E", "E", "I", "I", "I", "I", "D", "N", "O", "O", "O", "O", "O", "U", "U",
    "U", "U", "Y", "a", "a", "a", "a", "a", "a", "c", "e", "e", "e", "e", "i", "i",
    "i", "i", "i", "d", "n", "o", "o", "o", "o", "o", "oe", "u", "u", "u", "u", "y", "y"].freeze

  PROVINCES = {
    "Alberta" => "AB",
    "Nova Scotia" => "NS",
    "Ontario" => "ON",
    "British Columbia" => "BC",
    "Manitoba" => "MB",
    "Quebec" => "QB",
    "New Brunswick" => "NB",
    "Prince Edward Islands" => "PE",
    "Saskatchewan" => "SK",
    "Newfoundland and Labrador" => "NL",
    "Northwest Territories" => "NT",
    "Nunavut" => "NU",
    "Yukon" => "YT"
  }

  class << self

    def find_and_replace_special_characters
      File.open("newsheet.csv", "w") do |f|
        f.write(new_content)
      end
    end


    private

    def transforms
      @transforms ||= {}.tap do |t|
        SPECIAL_CHAR.each_with_index {|s,n| t[s] = NORMAL_CHAR[n]}
      end
    end


    def new_content
#      canada_file = open("Sheet1.csv")
#      file_contents = canada_file.read.split("")

      raw_data = open("Sheet1.csv")
      each_cell_array = raw_data.read.split(",")

      each_cell_array.each do |cell|
        cell.strip!
        cell.squeeze!(" ")
      end

      no_special_char = each_cell_array.join.split("").map do |char|
        if SPECIAL_CHAR.include?(char)
          char = transforms[char]
        end
        char
      end



      no_special_char.map! do |cell|
        if PROVINCES.include?(cell)
          cell = PROVINCES[cell]
        end
        cell
      end
      no_special_char.join(",")

    end
  end
end

CsvTransformer.find_and_replace_special_characters
