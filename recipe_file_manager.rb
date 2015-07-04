class RecipeFileManager
  attr_accessor :filename, :recipes

  DEFAULT_FILENAME = 'recipe-data.txt'

  def initialize(filename=nil)
    @filename = filename || DEFAULT_FILENAME
    @recipes = get_file_contents
  end

  def display_recipe_with_id
    @recipes.each.with_index(1) do |recipe, index|
      puts "#{index}: #{recipe}"
    end
  end

  private

  def get_file_contents
    File.open(@filename).read.split("\n")
  end
end
