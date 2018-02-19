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
      # This sets the local variable canada_file to the method open on the csv file.
      canada_file = open("Sheet1.csv")
      # This sets the local var file_contents to an array of the csv contents, which has been split up into strings separated by commas.
      file_contents = canada_file.read.split(",")
      # This prints the local var file_contents, which should appear like each cell would if this csv was opened in a spreadsheet.
      p file_contents
      p "-" * 40
      # Now that each cell's contents are in their own string, this block method strips the whitespace at the beginning and end of each string.
      no_spaces = file_contents.each do |string|
        string.strip
      end
      p no_spaces
      no_spaces.join.split("")

      no_spaces.map! do |char|
        if SPECIAL_CHAR.include?(char)
          char = transforms[char]
        end
        char
      end
      p no_spaces
      p "-" * 40

      no_special_char = no_spaces.join.split(",")
      p no_special_char
      p "-" * 40

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
