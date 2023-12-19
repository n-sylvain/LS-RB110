@stack = []
@register = 0

def minilang(commands)
  commands.split(' ').each do |command|
    @register = command.to_i if command.to_i.to_s == command
    @stack.push(@register) if command == "PUSH"
    @register = @stack.pop + @register if command == "ADD"
    @register = @register - @stack.pop if command == "SUB"
    @register = @stack.pop * @register if command == "MULT"
    @register = @register / @stack.pop if command == "DIV"
    @register = @register % @stack.pop if command == "MOD"
    @register = @stack.pop if command == "POP"
    puts @register if command == "PRINT"
  end

  p @stack
end

# minilang('PRINT')
# minilang('5 PUSH 3 MULT PRINT')
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')

def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD'   then register += stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'SUB'   then register -= stack.pop
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = token.to_i
    end
  end
end
