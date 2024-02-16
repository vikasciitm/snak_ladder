require "colorize"
def num
	j=100
	n=81
	q=61
	w=41
	e=21
	x=1
	puts ""
	for i in 1..100
		if j<91 && j>80
			if n%2==0
				print "#{n}".ljust(5).colorize(:background=>:red)
			else
				print "#{n}".ljust(5).colorize(:background=>:green)
			end
			n=n+1
		elsif j<71 && j>60
			if q%2==0
				print "#{q}".ljust(5).colorize(:background=>:red)
			else
				print "#{q}".ljust(5).colorize(:background=>:green)
			end
			q=q+1
		elsif j<51 && j>40
			if w%2==0
				print "#{w}".ljust(5).colorize(:background=>:red)
			else
				print "#{w}".ljust(5).colorize(:background=>:green)
			end
			w=w+1
		elsif j<31 && j>20
			if e%2==0
				print "#{e}".ljust(5).colorize(:background=>:red)
			else
				print "#{e}".ljust(5).colorize(:background=>:green)
			end
			e=e+1
		elsif j<11 && j>0
			if x==1
				if x%2==0
					print "@&".ljust(5).colorize(:background=>:red).blue
				else
					print "@&".ljust(5).colorize(:background=>:green).blue
				end
			else
				if x%2==0
					print "#{x}".ljust(5).colorize(:background=>:red)
				else
					print "#{x}".ljust(5).colorize(:background=>:green)
				end
			end
			x=x+1
		else
			if j%2==0
				print "#{j}".ljust(5).colorize(:background=>:red)
			else
				print "#{j}".ljust(5).colorize(:background=>:green)
			end
		end
		if j==11||j==21||j==31||j==41||j==51||j==61||j==71||j==81||j==91
			puts ""
		end
		j=j-1

	end
end
def start(nam1,nam2)
	val1=0
	val2=0
	stop=1
	while val1<=100
		j=100
		n=81
		q=61
		w=41
		e=21
		x=1
		# first plyer start
		puts ""
		puts "******************************************************************"
		print "\nEnter the #{nam1} dice(d):"
		d=gets.chomp
		d=d.downcase
		if d=="d"||d=="dice"
			number=rand(1..6)
			val1=val1+number
			if val1>100
				val1=val1-number
			end
			print "#{nam1} score ","@".blue,":#{val1}"
		end
		# first plyer end

		# second plyer start
		print "\nEnter the #{nam2} dice(d):"
		d=gets.chomp
		d=d.downcase
		if d=="d"||d=="dice"
			number=rand(1..6)
			val2=val2+number
			if val2>100
				val2=val2-number
			end
			print "#{nam2} score ","&".blue,":#{val2}"
		end
		puts ""
		puts "******************************************************************"
		puts ""
		# second plyer end
		puts ""
		for i in 1..100
			if j<91 && j>80
				if val1==n && val2==n
					if n%2==0
						print "@&".ljust(5).colorize(:background=>:red).blue
					else
						print "@&".ljust(5).colorize(:background=>:green).blue
					end
				elsif val1==n
					if n%2==0
						print "@".ljust(5).colorize(:background=>:red).blue
					else
						print "@".ljust(5).colorize(:background=>:green).blue
					end
				elsif val2==n
					if n%2==0
						print "&".ljust(5).colorize(:background=>:red).blue
					else
						print "&".ljust(5).colorize(:background=>:green).blue
					end
				else
					if n%2==0
						print "#{n}".ljust(5).colorize(:background=>:red)
					else
						print "#{n}".ljust(5).colorize(:background=>:green)
					end
				end
				n=n+1
			elsif j<71 && j>60
				if val1==q && val2==q
					if q%2==0
						print "@&".ljust(5).colorize(:background=>:red).blue
					else
						print "@&".ljust(5).colorize(:background=>:green).blue
					end
				elsif val1==q
					if q%2==0
						print "@".ljust(5).colorize(:background=>:red).blue
					else
						print "@".ljust(5).colorize(:background=>:green).blue
					end
				elsif val2==q
					if q%2==0
						print "&".ljust(5).colorize(:background=>:red).blue
					else
						print "&".ljust(5).colorize(:background=>:green).blue
					end
				else
					if q%2==0
						print "#{q}".ljust(5).colorize(:background=>:red)
					else
						print "#{q}".ljust(5).colorize(:background=>:green)
					end
				end
				q=q+1
			elsif j<51 && j>40
				if val1==w && val2==w
					if w%2==0
						print "@&".ljust(5).colorize(:background=>:red).blue
					else
						print "@&".ljust(5).colorize(:background=>:green).blue
					end
				elsif val1==w
					if w%2==0
						print "@".ljust(5).colorize(:background=>:red).blue
					else
						print "@".ljust(5).colorize(:background=>:green).blue
					end
				elsif val2==w
					if w%2==0
						print "&".ljust(5).colorize(:background=>:red).blue
					else
						print "&".ljust(5).colorize(:background=>:green).blue
					end
				else
					if w%2==0
						print "#{w}".ljust(5).colorize(:background=>:red)
					else
						print "#{w}".ljust(5).colorize(:background=>:green)
					end
				end
				w=w+1
			elsif j<31 && j>20
				if val1==e && val2==e
					if e%2==0
						print "@&".ljust(5).colorize(:background=>:red).blue
					else
						print "@&".ljust(5).colorize(:background=>:green).blue
					end
				elsif val1==e
					if e%2==0
						print "@".ljust(5).colorize(:background=>:red).blue
					else
						print "@".ljust(5).colorize(:background=>:green).blue
					end
				elsif val2==e
					if e%2==0
						print "&".ljust(5).colorize(:background=>:red).blue
					else
						print "&".ljust(5).colorize(:background=>:green).blue
					end
				else
					if e%2==0
						print "#{e}".ljust(5).colorize(:background=>:red)
					else
						print "#{e}".ljust(5).colorize(:background=>:green)
					end
				end
				e=e+1
			elsif j<11 && j>0
				if val1==x && val2==x
					if x%2==0
						print "@&".ljust(5).colorize(:background=>:red).blue
					else
						print "@&".ljust(5).colorize(:background=>:green).blue
					end
				elsif val1==x
					if x%2==0
						print "@".ljust(5).colorize(:background=>:red).blue
					else
						print "@".ljust(5).colorize(:background=>:green).blue
					end
				elsif val2==x
					if x%2==0
						print "&".ljust(5).colorize(:background=>:red).blue
					else
						print "&".ljust(5).colorize(:background=>:green).blue
					end
				else
					if x%2==0
						print "#{x}".ljust(5).colorize(:background=>:red)
					else
						print "#{x}".ljust(5).colorize(:background=>:green)
					end
				end
				x=x+1
			else
				if val1==j && val2==j
					if j%2==0
						print "@&".ljust(5).colorize(:background=>:red).blue
					else
						print "@&".ljust(5).colorize(:background=>:green).blue
					end
				elsif val1==j
					if j%2==0
						print "@".ljust(5).colorize(:background=>:red).blue
					else
						print "@".ljust(5).colorize(:background=>:green).blue
					end
				elsif val2==j
					if j%2==0
						print "&".ljust(5).colorize(:background=>:red).blue
					else
						print "&".ljust(5).colorize(:background=>:green).blue
					end
				else
					if j%2==0
						print "#{j}".ljust(5).colorize(:background=>:red)
					else
						print "#{j}".ljust(5).colorize(:background=>:green)
					end
				end
			end
			if j==11||j==21||j==31||j==41||j==51||j==61||j==71||j==81||j==91
				puts ""
			end
			j=j-1

		end

		if val1==100 && val2==100
			puts "\n\n"
			print "******************************************************************".center(100).blue
			puts ""
			print "---  #{nam1} and #{nam2} winner  ---".colorize(:background=>:green).center(100)
			puts ""
			puts "******************************************************************".center(100).blue
			puts ""
			break
		elsif val1==100
			puts "\n\n"
			print "******************************************************************".center(100).blue
			puts ""
			print "---  #{nam1} winner  ---".colorize(:background=>:green).center(100)
			puts ""
			puts "******************************************************************".center(100).blue
			puts ""
			break
		elsif val2==100
			puts "\n\n"
			print "******************************************************************".center(100).blue
			puts ""
			print "---  #{nam2} winners  ---".colorize(:background=>:green).center(100)
			puts ""
			print "******************************************************************".center(100).blue
			break
		end
	end
end
print "Snake Ladders Game".center(100).blue,"\n"
num

print "\nEnter the first player name:"
first=gets.chomp
print "Enter the second player name:"
second=gets.chomp

start(first,second)