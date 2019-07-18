# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails # emails starts out as a csv
  end

  def parse
    emails_array = @emails.split(" ")
    emails_array = emails_array.map { |email|
      if email.end_with?(",")
        email.chop
      else
        email
      end
    }
    emails_array.uniq
  end
# binding.pry
end
