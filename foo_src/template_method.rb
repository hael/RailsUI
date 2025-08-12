# class Report
#   def initialize
#     @title = 'Monthly report'
#     @text  = ['Things are going', 'really, really well.']
#   end

#   def output_report
#     puts '<html>'
#     puts '    <head>'
#     puts "        <title>#{@title}</title>"
#     puts '    </head>'
#     puts '    <body>'
#     @text.each do |line|
#       puts "        <p>#{line}</p>"
#     end
#     puts '    </body>'
#     puts '</html>'
#   end
# end

# report = Report.new
# report.output_report

class Report
  def initialize
    @title = 'Monthly report'
    @text  = ['Things are going', 'really, really well.']
  end

  # this is the abstract interface, which stays the same, wherease the concrete implementation 
  # will differ depending on the formatting of the report
  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  # hook method
  def output_start
  end

  # hook method
  def output_head
  end

  # hook method
  def output_body_start
  end

  def output_body
    @text.each do |line|
      output_line(line) # not defined here in the abstract class but in the concrete subclass
    end
  end

  # hook method
  def output_body_end
  end

  # hook method
  def output_end
  end
end

class HTMLReport < Report
  def output_start
    puts '<html>'
  end

  def output_head
    puts '    <head>'
    puts "        <title>#{@title}</title>"
    puts '    </head>'
  end

  def output_body_start
    puts '    <body>'
  end

  def output_line(line) # override
    puts "        <p>#{line}</p>"
  end

  def output_body_end
     puts '    </body>'
  end

  def output_end
     puts '</html>'
  end
end

class PlainTextReport < Report
  def output_start
  end

  def output_head
    puts "**** #{@title} ****"
    puts
  end

  def output_line(line) # override
    puts line
  end
end

report = HTMLReport.new
report.output_report

report = PlainTextReport.new
report.output_report