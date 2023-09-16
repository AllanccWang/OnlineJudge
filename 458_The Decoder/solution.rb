#UVa 458 The Decoder
fin.readlines.each{|line|
	fout.puts line.chars.map{|c| (c.ord-7).chr}.join
}
