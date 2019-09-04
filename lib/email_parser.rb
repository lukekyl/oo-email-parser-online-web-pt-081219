require "pry"
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor
  def initialize(list)
    @list = list
  end
  def parse
    array = []
    array = @list.split(/[\s,]/)
    array.each{|address|
      if !address.include?("@")
        array.delete(address)
      end
      
    }
    array.uniq
  end
end