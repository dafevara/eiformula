#!/usr/bin/ruby

#  valor presente pago unico#
def vppu (f, i, n)
	p = f * (1/ (1 + i) ** n)
	puts "P = #{p}"
end

# Cantidad compuesta, pago unico
def ccpu (p, i, n)
	f = p * ((1 + i) ** n)
	puts "F = #{f}"
end

# Valor presente, serie uniforme
def vpsu (a, i, n)
	p = a * (  ((( 1 + i ) ** n) - 1) / (i * ((1 + i)**n)  ))
	puts "P = #{p}"
end

# recuperacion de capital
def rec_cap (p, i, n)
	a = p * (  (i * ((1 + i)**n)  ) / ((( 1 + i ) ** n) - 1) )
	puts "A = #{a}"
end

def usage
		str = <<END_USAGE
Ejemplo de Uso: $ ruby formula.rb [vppu/ccpu/vpsu/rec_cap] [f/p/a] i n

END_USAGE
	puts str
end

usage()

if 0 < ARGV.length and  ARGV.length < 5
	i = ARGV[2].to_f
	n = ARGV[3].to_i

	case ARGV[0]
		when "vppu" then
			f = ARGV[1].to_f
			vppu(f, i, n)
			
		when "ccpu" then
			p = ARGV[1].to_f
			ccpu(p, i, n)
			
		when "vpsu" then
			a = ARGV[1].to_f
			vpsu(a, i, n)
			
		when "rec_cap" then
			p = ARGV[1].to_f
			rec_cap(p, i, n)
	end
end
