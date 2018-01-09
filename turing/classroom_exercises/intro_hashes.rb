hash1 = {}
hash2 = Hash.new
hash3 = Hash.new(0)

hash1[:purple]  yields nil
hash2[:purple] yields nil
hash3[:purple] yields 0

old_tv = {
  "screen size" => 50,
  "price" => 300,
  "brand" => "Samsung"
}

# symbol syntax
new_tv = {
  screen_size: 50,
  price: 300,
  brand: "Samsung"

}
new_tv[:resolution] = "720p"
new_tv[:resolution] = "4k" # CHANGES 720p to 4k


new_band = {}
new_band[:bassit] = "Flea"
new_band[:bassist] # yield "Flea"
new_band[:vocalist] # yield nil
new_band[:vocalist] = "Anthony Keatis"
new_band[:drummer] = "Ana"
new_band.keys # yield an array of strings
new_band.values # yield an array of strings associated with values
new_band[:vocalist] = "Sal"
new_band.keys # yield
new_band.values # yield Flea Sal Ana

a = [[1,2,3],[4,5,6]]
a.count # yields 2
a.first.count # yields 3
a[1][1] # will yield element 5

a = [{pizza: "tasty"}, {calzone: "also tasty"}]
a.count # yields 2
a.first.count #yields 2
a[1][1] #yields "also tasty"

h = {
  dog: {
    name: "Chance",
    weight: "45 pounds",
  },
  cat: {
    name: "Sassy",
    weight: "15 pounds"
  }
}

#what is h.count
h.count #yields 2
h.keys #yields [dog:, cat:]
h.values # yields [{name: "Chance", weight: "45 pounds"}, {name: "Sassy", weight: "15 pounds"}]
