require 'soda/client'

class API
  client = SODA::Client.new({:domain => "data.bayareametro.gov"}), :app_token => "WqiUDRsnRNbvXluWOilrdHhBH"})

  results = client.get("5ubk-6knb", :$limit => 5000)

  puts "Got #{results.count} results. Dumping first results:"
  results.first.each do |k, v|
    puts "#{key}: #{value}"
  end

end
