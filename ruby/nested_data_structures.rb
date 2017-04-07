vehicles = {
  trucks: {
    make: [
      "Toyota",
      "Ford",
      "GMC"
    ],
    drive_train: [
      "4x4",
      "2x4"
    ],
    seats: {
      large: 5,
      medium: 3,
      small: nil
    }
  },
  suvs: {
    make: [
      "Toyota",
      "Subaru",
      "Honda",
    ],
    drive_train: [
      "All-wheel-drive",
      "2x4"
    ],
    seats: {
      large: 7,
      medium: 5,
      small: nil 
    }
  }
}
vehicles[:suvs][:drive_train][1]
vehicles[:suvs][:seats][:medium] = 4  
vehicles[:trucks][:make][3] = "Chevy"
vehicles[:trucks]