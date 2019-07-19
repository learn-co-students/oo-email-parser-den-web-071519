# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        delimiters = [',', ' ']
        split_emails = emails.split(Regexp.union(delimiters))
        new_emails = split_emails.select{|email| email.length > 1}
        new_emails.uniq
    end
end