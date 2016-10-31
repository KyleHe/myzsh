# run 'ln -s ~/.myzsh/irbrc ~/.irbrc'
require 'rubygems' rescue nil
require 'wirble'
require 'hirb'
require 'irb/completion'
require 'ap'

# load wirble
Wirble.init
Wirble.colorize

# load hirb
Hirb::View.enable

ANSI = {}
ANSI[:RESET] = "\e[0m"
ANSI[:BOLD] = "\e[1m"
ANSI[:UNDERLINE] = "\e[4m"
ANSI[:LGRAY] = "\e[0;37m"
ANSI[:GRAY] = "\e[1;30m"
ANSI[:RED] = "\e[31m"
ANSI[:GREEN] = "\e[32m"
ANSI[:YELLOW] = "\e[33m"
ANSI[:BLUE] = "\e[34m"
ANSI[:MAGENTA] = "\e[35m"
ANSI[:CYAN] = "\e[36m"
ANSI[:WHITE] = "\e[37m"

# IRB Options
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:EVAL_HISTORY] = 200


if defined?(Rails)
  require 'logger'
  Rails.logger=Logger.new(STDOUT)
  #IRB.conf[:USE_READLINE] = true
  ActiveRecord::Base.logger = Rails.logger

  # Display the RAILS ENV in the prompt
  # ie : [Development]>>
  IRB.conf[:PROMPT][:CUSTOM] = {
   :PROMPT_N => "[#{Rails.env.capitalize}]>> ",
   :PROMPT_I => "[#{Rails.env.capitalize}]>> ",
   :PROMPT_S => nil,
   :PROMPT_C => "?> ",
   :RETURN => "=> %s\n"
   }
  # Set default prompt
  IRB.conf[:PROMPT_MODE] = :CUSTOM
end

# We can also define convenient methods (credits go to thoughtbot)
def sql(query)
  ActiveRecord::Base.connection.select_all(query)
end

# annotate column names of an AR model
def show(obj)
  y(obj.send("column_names"))
end

# Add a method pm that shows every method on an object
# Pass a regex to filter these
def pm(obj, *options)
  methods = obj.methods
  methods -= Object.methods unless options.include? :more
  filter = options.select {|opt| opt.kind_of? Regexp}.first
  methods = methods.select {|name| name =~ filter} if filter

  data = methods.sort.collect do |name|
    method = obj.method(name)
    if method.arity == 0
      args = "()"
    elsif method.arity > 0
      n = method.arity
      args = "(#{(1..n).collect {|i| "arg#{i}"}.join(", ")})"
    elsif method.arity < 0
      n = -method.arity
      args = "(#{(1..n).collect {|i| "arg#{i}"}.join(", ")}, ...)"
    end
    klass = $1 if method.inspect =~ /Method: (.*?)#/
    [name.to_s, args, klass]
  end
  max_name = data.collect {|item| item[0].size}.max
  max_args = data.collect {|item| item[1].size}.max
  data.each do |item|
    print " #{ANSI[:YELLOW]}#{item[0].to_s.rjust(max_name)}#{ANSI[:RESET]}"
    print "#{ANSI[:BLUE]}#{item[1].ljust(max_args)}#{ANSI[:RESET]}"
    print " #{ANSI[:WHITE]}#{item[2]}#{ANSI[:RESET]}\n"
  end
  data.size
end

class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end

  def to_pboard(pboard=:general)
    %x[printf %s "#{self.to_s}" | pbcopy -pboard #{pboard.to_s}]
    paste pboard
  end

  alias :to_pb :to_pboard
end

puts "> all systems are go wirble/hirb/ap/show <"
