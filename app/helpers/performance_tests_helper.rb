module PerformanceTestsHelper
  def avg_values( performance_test_results, measure )
    output = "["
    i = 0
    performance_test_results.each do |ptr|
      unless i == 0
        output += ","
      end
      if measure == 1 
        output += "[#{i},#{ptr.measure1avg}]" if ptr.measure1avg != nil
      elsif measure == 2
        output += "[#{i},#{ptr.measure2avg}]" if ptr.measure2avg != nil
      elsif measure == 3
        output += "[#{i},#{ptr.measure3avg}]" if ptr.measure3avg != nil
      elsif measure == 4
        output += "[#{i},#{ptr.measure4avg}]" if ptr.measure4avg != nil
      elsif measure == 5
        output += "[#{i},#{ptr.measure5avg}]" if ptr.measure5avg != nil
      end
      i += 1
    end
    output += "]"
    return output
  end      
  
  def max_values( performance_test_results, measure )
    output = "["
    i = 0
    performance_test_results.each do |ptr|
      unless i == 0
        output += ","
      end
      if measure == 1
        output += "[#{i},#{ptr.measure1max}]" if ptr.measure1max != nil
      elsif measure == 2
        output += "[#{i},#{ptr.measure2max}]" if ptr.measure2max != nil
      elsif measure == 3
        output += "[#{i},#{ptr.measure3max}]" if ptr.measure3max != nil
      elsif measure == 4
        output += "[#{i},#{ptr.measure4max}]" if ptr.measure4max != nil
      elsif measure == 5
        output += "[#{i},#{ptr.measure5max}]" if ptr.measure5max != nil
      end
      i += 1
    end
    output += "]"
    return output
  end
  
  def min_values( performance_test_results, measure )
    output = "["
    i = 0
    performance_test_results.each do |ptr|
      unless i == 0
        output += ","
      end
      if measure == 1
        output += "[#{i},#{ptr.measure1min}]" if ptr.measure1min != nil
      elsif measure == 2
        output += "[#{i},#{ptr.measure2min}]" if ptr.measure2min != nil
      elsif measure == 3
        output += "[#{i},#{ptr.measure3min}]" if ptr.measure3min != nil
      elsif measure == 4
        output += "[#{i},#{ptr.measure4min}]" if ptr.measure4min != nil
      elsif measure == 5
        output += "[#{i},#{ptr.measure5min}]" if ptr.measure5min != nil
      end
      i += 1
    end
    output += "]"
    return output
  end
  
  def tick_values( performance_test_results)
    output = "["
    i=0
    performance_test_results.each do |tick|
      unless i == 0
        output += ","
      end
      output += "#{i}"
      i += 1
    end
    output += "]"
  end 
  
  def create_chart_string( performance_test_results, index )
    output = ""
    output += "var d1 = " + max_values(performance_test_results, index) + ";"
    output += "var d2 = " + avg_values(performance_test_results, index) + ";"
    output += "var d3 = " + min_values(performance_test_results, index) + ";"
    graph_name = '\"measure' + index.to_s + 'graph\"'
    output += "$.plot($(" + graph_name + '), [ 
  		{ label: \"Max\", data: d1},
  		{ label: \"Avg\", data:d2},
  		{ label: \"Min\", data:d3} 
  		], {
  		  series: {
  			lines: { show: true },
  			points: { show: true }
  		},
  		  xaxis: {
  			ticks: ' + tick_values(performance_test_results) + '
  	      },
  	      legend: {
  		    position: \"nw\",
  		    margin: 0,
  		    noColumns: 6
  	      }	
  		}
  	);'
    return output
  end
 
 
   
end
