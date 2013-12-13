num = case gets.to_i
	when 1..4 then "few"
	when 5..9 then "several"
	when 10..19 then "pack"
	when 20..49 then "lots"
	when  50..99 then "horde"
	when  100..249 then "throng"
	when  250..499 then "swarm"
	when  500..999 then "zounds"
	else "legion"
end
puts num
