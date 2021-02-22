import Geo3x3

let code = Geo3x3.encode(lat: 35.65858, lng: 139.745433, level: 14)
IO.puts code
let pos = Geo3x3.decode(code: "E3793653391822")
IO.puts pos
