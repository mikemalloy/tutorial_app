module PerformanceTestsHelper
  def avg_values( performance_test_results, measure )
    output = "["
    i = 0
    performance_test_results.each do |ptr|
      output += "," unless i == 0 
      if measure == 1 
        output +=  ptr.measure1avg.blank? ? "null" : ptr.measure1avg.to_s
      elsif measure == 2
        output +=  ptr.measure2avg.blank? ? "null" : ptr.measure2avg.to_s
      elsif measure == 3
        output +=  ptr.measure3avg.blank? ? "null" : ptr.measure3avg.to_s
      elsif measure == 4
        output +=  ptr.measure4avg.blank? ? "null" : ptr.measure4avg.to_s
      elsif measure == 5
        output +=  ptr.measure5avg.blank? ? "null" : ptr.measure5avg.to_s
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
      output += "," unless i == 0 
      if measure == 1
        output += ptr.measure1max.blank? ? "null" : ptr.measure1max.to_s 
      elsif measure == 2
        output += ptr.measure2max.blank? ? "null" : ptr.measure2max.to_s 
      elsif measure == 3
        output += ptr.measure3max.blank? ? "null" : ptr.measure3max.to_s 
      elsif measure == 4
        output += ptr.measure4max.blank? ? "null" : ptr.measure4max.to_s 
      elsif measure == 5
        output += ptr.measure5max.blank? ? "null" : ptr.measure5max.to_s 
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
      output += "," unless i == 0 
      if measure == 1
        output += ptr.measure1min.blank? ? "null" : ptr.measure1min.to_s 
      elsif measure == 2
        output += ptr.measure2min.blank? ? "null" : ptr.measure2min.to_s 
      elsif measure == 3
        output += ptr.measure3min.blank? ? "null" : ptr.measure3min.to_s
      elsif measure == 4
        output += ptr.measure4min.blank? ? "null" : ptr.measure4min.to_s
      elsif measure == 5
        output += ptr.measure5min.blank? ? "null" : ptr.measure5min.to_s
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
  
  def index_values( array, index )
    output = "["
    i=0
    array.each do |item|
      output += "," unless i == 0
      output += "#{item[index]}" unless item[index] == nil
      i+=1
    end
    output += "]"
  end
  
  def date_values( performance_tests )
    output = '['
    i = 0
    performance_tests.each do |ptr|
      date_run = ptr.date_run.to_datetime
      formatted_date_string = date_run.strftime( "%m/%d/%Y")
      output += "," unless i == 0
      output += "\'" + formatted_date_string 
      output += "(#{ptr.build})" unless ptr.build.blank? or ptr.build.length > 6
      output += "\'"
      i+=1
    end
    output += ']'
  end
  
  def median_values( performance_tests, index )
    output = '['
    i = 0
    performance_tests.each do |ptr|
      output += "," unless i == 0
      if index == 1
        output += ptr.measure1median.to_s
      elsif index == 2 
        output += ptr.measure2median.to_s
      elsif index == 3
        output += ptr.measure3median.to_s
      elsif index == 4
        output += ptr.measure4median.to_s
      elsif index == 5
        output += ptr.measure5median.to_s
      end
      i+=1
    end
    output += ']'
  end      
  
  def array_values( array )
    output = '['
    i = 0
    array.each do |item|
      output += ',' unless i == 0
      output += item.to_s
      i += 1
    end
    output += ']'
  end
  
  def is_empty? (string )
    if string == nil or string.strip == ""
      return true
    else
      return false
    end
  end
   
end
