module PerformanceTestsHelper
  def avg_values( performance_test_results, measure )
    output = "["
    i = 0
    performance_test_results.each do |ptr|
      unless i == 0
        output += ","
      end
      output += "[#{i},#{ptr.measure1avg}]"
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
      output += "[#{i},#{ptr.measure1max}]"
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
      output += "[#{i},#{ptr.measure1min}]"
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
    
end
