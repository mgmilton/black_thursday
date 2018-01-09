#1. Given [1,2,3,4,5] find sum
numbers = [1,2,3,4,5]
p numbers.reduce(0, :+)
#2. Create an empty hash
my_hash = Hash.new
p my_hash
#8. Using the collection below, reutrn the second project associeated with Module 3
a = {
  "mod1" => {
    "instructors" => ["Ali", "Nate", "Victoria"],
    "projects" => ["Perlious Journey", "Date Night", "NightWriter", "CompleteMe", "Battleship", "Black Thursday"]
  },
  "mod2" => {
    "instructors" => ["Ilana", "Sal"],
    "projects" => ["Bike Share", "Rails Mini", "Little Shop"]
  },
  "mod3" => {
    "instructors" => ["Mike", "Josh"],
    "projects" => ["Rails Engine", "ApiCurious", "Cloney Island"]
  },
  "mod4" => {
    "instructors" => ["Casey", "Lauren", "Schutte"],
    "projects" => ["Quantified Self", "Personal Project", "Open Source"]
  }
}
p a["mod3"]["projects"][1]
