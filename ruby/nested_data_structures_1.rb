fly_fishing = {
    river_1: {
        mccloud_river: "Northern California",
        technique: [
            "DryFly",
            "Nymphing",
            "Streamer"
        ]
    },
    river_2: {
        rogue_river: "Southern Oregon",
        technique: [
            "Nymphing",
            "Swing"
        ]
    },
    river_3: {
        lower_san_juan: "Northern New Mexico",
        technique: [
            "DryFly",
            "Nymphing",
            "Streamer"
        ]
    }
}

fly_fishing.each do |river, name|
  puts "#{river}: #{name}"
end 
p fly_fishing[:river_3][:technique]
p fly_fishing[:river_2][:rogue_river]



