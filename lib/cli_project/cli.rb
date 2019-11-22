class StudioGhibli::CLI

  def start
    main_menu
	end

  def main_menu
    # add .gsub /^\s*/, '' below to keep the indentation from the Here DOC from displaying in the CLI
    puts <<-DOC
      ------------------------------------------------------------------
      Please choose an option number or type "exit" to exit the program:
      ------------------------------------------------------------------
      1. I would like to see a list of all the Studio Ghibli films
      2. I would like to search for a Studio Ghibli film
      ------------------------------------------------------------------
    DOC
      # 3. I would like a to see a list of species included in the films
      # 4. I would like to search the films by title
      # 5. I would like to search the films by species
      # 6. I would like some trivia / facts / a quiz
      main_pick
  end

  def main_pick
    input = ""
    while input != "exit"
      input = gets.strip.to_i
      if input == 1
        StudioGhibli::Film.get_films
        puts StudioGhibli::Film.all.first
      else
        list_species
      end
    end
  end

  def list_films
    binding.pry
    puts Film.all
  end

  def list_species
    puts "put species list here"
  end

end

### leaving this here for now in case I want to go back to the income stats app
	# def list_regions
	# 	#here doc. .gsub below removes indentation
  #   # TO DO this list should not be hardcoded, should be replaced with regions coming from the API
	# 	puts <<-DOC.gsub /^\s*/, ''
	# 		Please choose a metropolitan area by selecting a number from the list below:
  #     1. Atlanta
  #     2. Bay Area
  #     3. Chicago
  #     4. Dallas
  #     5. Houston
  #     6. Los Angeles
  #     7. Miami
  #     8. New York
  #     9. Philadelpia
  #     10. Washington, D.C.
	# 	DOC
	# end
