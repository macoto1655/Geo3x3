defmodule Geo3x3 do
    def encode(lat, lng, level) do
		if level < 1 do
			return ""
		end
		lng2 = lng
		res = ""
		if lng >= 0 do
			res += "E"
		else
			res += "W"
			lng2 += 180
		end
		lat2 = 90 - lat // 0:the North Pole,  180:the South Pole
		unit = 180.0
		for i <- 1 .. level - 1 do
			unit /= 3
			x = div(lng2, unit)
			y = div(lat2, unit)
			res += x + y * 3 + 1
			lng2 -= x * unit
			lat2 -= y * unit
		end
		return res
    end

    def decode(code) do
		begin = 0
		flg = false
		c = String.first code
		cond do
			c == "-" || c == "W" ->
				flg = true
				begin = 1
			c == "+" || c == "E" ->
				begin = 1
		end
		unit = 180.0
		lat = 0.0
		lng = 0.0
		level = 1
		clen = String.length code
		num = "0123456789"
		for i <- begin .. clen - 1 do
			c = String.at code, i
			idx = :binary.match num, c
			if let idx = num.firstIndex(of : c) {
				let n = num.distance(from: num.startIndex, to: idx) - 1
				if (n >= 0) {
					unit /= 3
					lng += Double(n % 3) * unit
					lat += Double(n / 3) * unit
					level += 1
				}
			} else {
				break
			}
		end
		lat += unit / 2
		lng += unit / 2
		lat = 90 - lat
		if flg do
			lng -= 180.0
		end
        return {lat, lng, Double(level), unit }
    end
end
