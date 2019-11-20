class CLI

  def call
		puts "Welcome to my CLI project!"
		list_regions
	end

	def list_regions
		#here doc. .gsub below removes indentation
    # TODO this list should not be hardcoded, should be replaced with regions coming from the API
		puts <<-DOC.gsub /^\s*/, ''
			Please choose a metropolitan area by selecting a number from the list below:
      1. Atlanta
      2. Bay Area
      3. Chicago
      4. Dallas
      5. Houston
      6. Los Angeles
      7. Miami
      8. New York
      9. Philadelpia
      10. Washington, D.C.
		DOC
	end
end
