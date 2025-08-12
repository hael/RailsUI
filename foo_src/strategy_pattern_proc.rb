class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter) # passing in a lambda proc that does the formatting
    @title     = 'Monthly report'
    @text      = ['Things are going', 'really, really well.']
    @formatter = formatter # this is now a lambda proc
  end

  def output_report
    # calling the lambda proc
    @formatter.call(self) # "call" is the only method available for the proc, so it works only for simple cases
  end
end

HTML_FORMATTER = lambda do |context|
  puts '<html>'
  puts '    <head>'
  puts "        <title>#{context.title}</title>"
  puts '    </head>'
  puts '    <body>'
  context.text.each do |line|
    puts "        <p>#{line}</p>"
  end
  puts '    </body>'
  puts '</html>'
end

PLAINTEXT_FORMATTER = lambda do |context|
  puts "**** #{context.title} ****"
  puts
  context.text.each do |line|
    puts line
  end
end

report = Report.new(&HTML_FORMATTER)
report.output_report

report = Report.new(&PLAINTEXT_FORMATTER)
report.output_report