module PerformanceTestsHelper
  def avg_values( performance_test_results, measure )
    output = "["
    i = 0
    performance_test_results.each do |ptr|
      if measure == 1 
        output += "," unless i == 0 or ptr.measure1avg == nil
        output += "[#{i},#{ptr.measure1avg}]" if ptr.measure1avg != nil
      elsif measure == 2
        output += "," unless i == 0 or ptr.measure2avg == nil
        output += "[#{i},#{ptr.measure2avg}]" if ptr.measure2avg != nil
      elsif measure == 3
        output += "," unless i == 0 or ptr.measure3avg == nil
        output += "[#{i},#{ptr.measure3avg}]" if ptr.measure3avg != nil
      elsif measure == 4
        output += "," unless i == 0 or ptr.measure4avg == nil
        output += "[#{i},#{ptr.measure4avg}]" if ptr.measure4avg != nil
      elsif measure == 5
        output += "," unless i == 0 or ptr.measure5avg == nil
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
      if measure == 1
        output += "," unless i == 0 or ptr.measure1max == nil
        output += "[#{i},#{ptr.measure1max}]" if ptr.measure1max != nil
      elsif measure == 2
        output += "," unless i == 0 or ptr.measure2max == nil
        output += "[#{i},#{ptr.measure2max}]" if ptr.measure2max != nil
      elsif measure == 3
        output += "," unless i == 0 or ptr.measure3max == nil
        output += "[#{i},#{ptr.measure3max}]" if ptr.measure3max != nil
      elsif measure == 4
        output += "," unless i == 0 or ptr.measure4max == nil
        output += "[#{i},#{ptr.measure4max}]" if ptr.measure4max != nil
      elsif measure == 5
        output += "," unless i == 0 or ptr.measure5max == nil
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
      if measure == 1
        output += "," unless i == 0 or ptr.measure1min == nil
        output += "[#{i},#{ptr.measure1min}]" if ptr.measure1min != nil
      elsif measure == 2
        output += "," unless i == 0 or ptr.measure2min == nil
        output += "[#{i},#{ptr.measure2min}]" if ptr.measure2min != nil
      elsif measure == 3
        output += "," unless i == 0 or ptr.measure3min == nil
        output += "[#{i},#{ptr.measure3min}]" if ptr.measure3min != nil
      elsif measure == 4
        output += "," unless i == 0 or ptr.measure4min == nil
        output += "[#{i},#{ptr.measure4min}]" if ptr.measure4min != nil
      elsif measure == 5
        output += "," unless i == 0 or ptr.measure5min == nil
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
      output += "\'" + formatted_date_string + "(#{ptr.build})" + "\'"
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
