my_hash = [ 
{ "date"=>"25-07-2019", "rating"=>5 },
{ "date"=>"25-04-2019", "rating"=>4 },
{ "date"=>"25-04-2019", "rating"=>3 },
{ "date"=>"25-04-2019", "rating"=>2 }
]



    def sort_and_select(hsh)
        hsh.sort_by{|hs| -hs["rating"]}[0..2]
    end

p sort_and_select(my_hash)

