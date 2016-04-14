=begin
Welcome to 'The Bar'
An elite British establishment in Her Majesty's former colony, otherwise known as the 'United States'.
Step over to the bar and enjoy a lovely drink of your choosing.
=end

#The bar inventory:
wine_rack = [
  { name: "Chamisal",
    vintage: 2014,
    category: "White",
    grape_composition: "Unoaked Chardonnay",
    location: "Central Coast, California",
    personal_rating: 88},

  { name: "The Fugitive",
    vintage: 2010,
    category: "Red",
    grape_composition: "Red Blend",
    location: "Napa, California",
    personal_rating: 90},

  { name: "Red Newt Cellars",
    vintage: 2012,
    category: "White",
    grape_composition: "Dry Riesling",
    location: "Finger Lakes, New York",
    personal_rating: 91},

  { name: "Au Bon Climat",
    vintage: 2010,
    category: "White",
    grape_composition: "Chardonnay",
    location: "Santa Barbara, California",
    personal_rating: 89},

  { name: "RIDGE Geyserville",
    vintage: "2008",
    category: "Red",
    grape_composition: "Red Blend",
    location: "Geyserville, California",
    personal_rating: 94},

  { name: "L. Vitteaut Alberte",
    vintage: "Non-vintage",
    category: "Something Else",
    grape_composition: "Cremant de Bourgogne",
    location: "France",
    personal_rating: 93},

  { name: "Sandeman",
    vintage: "20 YR",
    category: "Something Else",
    grape_composition: "Tawny Port",
    location: "Portugal",
    personal_rating: 90},

  { name: "Laurent-Perrier",
    vintage: "Non-vintage",
    category: "Something Else",
    grape_composition: "Ultra Brut",
    location: "France",
    personal_rating: 92},

  { name: "Unicorn Tears",
    vintage: "Spirit",
    category: "Something Else",
    grape_composition: "Gin liqueur",
    location: "England",
    personal_rating: 65},

  { name: "Duvel",
    vintage: "Beer",
    category: "Something Else",
    grape_composition: "Strong Golden Pale Ale",
    location: "Belgium"},

  { name: "La Playa",
    vintage: "2011",
    category: "Red",
    grape_composition: "Carmenere",
    location: "Colchagua Valley, Chile",
    personal_rating: 88}
    ]

#These two methods print a line break.
def line_break_80
  puts "%" * 80
end

def line_break_50
  puts ("-" * 50).center(80)
end

#This method prints the inventory of the bar based upon the users category selection
#of red, white, or something else.
def output_wine_details(wined, user)
  for wine in wined
    if wine[:category].downcase == user
    puts "#{wine[:vintage]}    #{wine[:name]}, #{wine[:location]}".center(80)
    puts "#{wine[:grape_composition]}, rated #{wine[:personal_rating]} points".center(80)
    line_break_50
    end
  end
end

#START%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
line_break_80
puts"                                           ;;\\/;;;;;;;;"
puts"                                         ;;;;;;;;;;;;;;;;;"
puts"                                       ;;;;;;;;;;;;     ;;;;;"
puts"                                      ;;;;;    ;;;         \\;;"
puts"                                     ;;;;;      ;;          |;"
puts"                                     ;;;;         ;         |"
puts"                                     ;;;                    |"
puts"                                     ;;                     )"
puts"                                      \\    ~~~~ ~~~~~~~    /"
puts"                                       \\    ~~~~~~~  ~~   /"
puts"                                      |\ \\                / /|"
puts"                                       \\\| %%%%%    %%%%% |//"
puts"                                      [[====================]]"
puts"                                       | |  ^          ^  | |"
puts"                                       | | :@: |/  \\| :@: | |"
puts"                                        \\______/\\  /\\______/"
puts"                                         |     (@\\/@)    |"
puts"                                        /                 \\"
puts"                                       /  ;-----\\  /_____; \\"
puts"Good evening, sir.                     \\         \\/        /"
puts"My name is Jinks.                      )                  ("
puts"What are you in the mood for today:   /                    \\"
puts"Red, white, or something else?        \\__                  /"
puts"                                       \\_                _/"
puts"                                        \\______/\\/\\______/"
puts"                                         _|    /--\\    |_"
puts"                                        /%%\\  /||||\\  /%%\\"
puts"                         ______________/%%%%\\/\\||||/\\/%%%%\\______________"
puts"                        / :  :  :  /  .\\%%%%%%%\\||/%%%%%%%/.  \\  :  :  : \\"
puts"                       )  :  :  :  \\.  .\\%%%%%%/||\\%%%%%%/.  ./  :  :  :  ("
line_break_80

#Ask user what type of drink they would like (red, white, or something else)
user_category_selection = gets.chomp.downcase

#If they do not choose one of the three options, repeat this question and prompt.
until ["white", "red", "something else"].include? user_category_selection.downcase
  puts "Pardon me for asking, but are you intoxicated already?".center(80)
  puts "I said red, white, or something else.".center(80)
  user_category_selection = gets.chomp
end

#If the user selects 'red,' a listing of all red wines is displayed with details.
if user_category_selection.downcase.eql? "red"
  puts
  line_break_80
  puts "May I suggest one of these delightful reds:"
  puts
  line_break_50
  output_wine_details(wine_rack, user_category_selection)

#If the user selects 'white,' a listing of all white wines is displayed with details.
elsif user_category_selection.downcase.eql? "white"
  puts
  line_break_80
  puts "May I suggest one of these heavenly white wines from the cellar:"
  line_break_50
  output_wine_details(wine_rack, user_category_selection)

#If user selects 'something else,' everything else is shown.
else user_category_selection.downcase.eql? "something else"
    puts
    line_break_80
    puts "Well then, let's see what else we have to choose from."
    puts "May I suggest:".center(80)
    puts
    line_break_50
    output_wine_details(wine_rack, user_category_selection)
end
puts

#User is asked to pick one of the detailed options they were shown based on their initial selection.
puts "What shall it be?"
user_picks = gets.chomp
puts
line_break_80
puts

#Here they are asked to verify they can afford their drink order.
puts "Hmm, say, are you certain you can... afford such an exhorbitant purchase?".center(80)
can_user_afford = gets.chomp
puts
if can_user_afford.downcase == "no"
  line_break_80
  puts
  puts "     .- `'\\         I thought so!"
  puts "   .-'   `/\\"
  puts ".-'       `/\\              Out with you!"
  puts "\\          `/\\"
  puts " \\          `/\\                  We don't serve your kind here!!"
  puts "  \\    _-    `/\\       _.- - ."
  puts "   \\    _-    `/`-..--\\       )     Get your bloody #{user_picks.downcase.capitalize} elsewhere."
  puts "    \\    _-    `,','  /     ,')"
  puts "     `-_   -    ` -- ~    ,','      ...bloody drunk."
  puts "       `-               ,','"
  puts "        \\,--.    ____==-~"
  puts "         \\   \\_-~\\"
  puts "          `_-~_.-'"
  puts "           \\\\-~"
  puts
  line_break_80
elsif can_user_afford.downcase == "yes"
  line_break_80
  puts "                //"
  puts "               //"
  puts "              //"
  puts "      _______||"
  puts " ,-'''       ||`-."
  puts "(            ||   )"
  puts "|`-..._______,..-'|     I beg your pardon."
  puts "|            ||   |"
  puts "|     _______||   |     It's just that ever since that coding school opened next"
  puts "|,-'''_ _  ~ ||`-.|     door, we've had to be very vigilant against thievery."
  puts "|  ~ / `-.\\ ,-'\\ ~|     You know how students can be."
  puts "|`-...___/___,..-'|"
  puts "|    `-./-'_ \\/_| |     One #{user_picks.downcase.capitalize} coming up!"
  puts "| -'  ~~     || -.|"
  puts "(   ~      ~   ~~ )"
  puts " `-..._______,..-'"
  puts
  line_break_80
else
  line_break_80
  puts
  puts "What the bloody hell does #{can_user_afford.downcase.capitalize} mean??"
  puts "Do you speak English?"
  puts "I said, 'E-N-G-L-I-S-H!'"
  puts "E-N-G-L-I-S-H"
  puts "Where are you from, France?"
  puts "Do you have any money?  L'argent!?!"
  puts

  #If they user does not answer yes or no as to whether or not they can afford
  #their drink, they are again prompted to choose.
  user_can_afford_second = gets.chomp
  puts
  if user_can_afford_second.downcase == "no"
    line_break_80
    puts
    puts "     .- `'\\         I thought so!"
    puts "   .-'   `/\\"
    puts ".-'       `/\\              Out with you!"
    puts "\\          `/\\"
    puts " \\          `/\\                  We don't serve your kind here!!"
    puts "  \\    _-    `/\\       _.- - ."
    puts "   \\    _-    `/`-..--\\       )      Filthy French, think they own the world."
    puts "    \\    _-    `,','  /     ,')"
    puts "     `-_   -    ` -- ~    ,','"
    puts "       `-               ,','"
    puts "        \\,--.    ____==-~"
    puts "         \\   \\_-~\\"
    puts "          `_-~_.-'"
    puts "           \\\\-~"
    puts
    line_break_80
  elsif user_can_afford_second.downcase == "yes"
    line_break_80
    puts "                //"
    puts "               //"
    puts "              //"
    puts "      _______||"
    puts " ,-'''       ||`-."
    puts "(            ||   )"
    puts "|`-..._______,..-'|     Alright then."
    puts "|            ||   |"
    puts "|     _______||   |     One #{user_picks.downcase.capitalize} coming up!"
    puts "|,-'''_ _  ~ ||`-.|"
    puts "|  ~ / `-.\\ ,-'\\ ~|     The french... always making things so bloody complicated."
    puts "|`-...___/___,..-'|"
    puts "|    `-./-'_ \\/_| |"
    puts "| -'  ~~     || -.|"
    puts "(   ~      ~   ~~ )"
    puts " `-..._______,..-'"
    puts
    line_break_80
  else
    line_break_80
    puts
    puts "This conversation has me knackered."
    puts "Enjoy the shitty #{user_picks.downcase.capitalize} you ordered."
    puts
    puts "I'm done with this bloody piss hole of a job."
    puts "We would never have allowed patrons of your grade to walk through our doors"
    puts "in Cambridge.  It's a load of bollocks, that's what it is."
    puts
    puts "You can take this job and shove it up your pipe hole!"
    puts
    puts "GOOD DAY!"
    puts
    line_break_80
  end
end

=begin
Enjoy your drink!
------------------------------------
This code written by DEVEN BLACKBURN
deven@codefll.org
8 April, 2016
=end
