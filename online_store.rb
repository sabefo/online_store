class Tienda
	attr_accessor :saldo, :productos, :usuarios

	def initialize
		@saldo = 1000
		@productos = 10
		@usuarios = Hash.new
	end

	def login(usuario, contra)
		bandera = false
		if @usuarios.size == 0
			puts "no hay usuarios"
			bandera
		else
			if @usuarios[usuario] == contra
				puts "exitoso"
				bandera = true
			end
		end
		bandera
	end
	def register(usuario,contra)
		@usuarios 
			@usuarios[usuario] = contra
			puts "Your username was successfully created!"
			puts @usuarios
	end
end

class Usuario
	def initialize(name, pass)
		@name = name
		@pass = pass
	end
end

class Admin < Usuario
	def initialize(name, pass, tienda)
		@name = name
		@pass = pass
		@tienda = tienda
	end

	def checa_saldo
		@tienda.saldo
	end
end

class Vendendor < Usuario
	def initialize(name, pass, tienda)
		@name = name
		@pass = pass
		@tienda = tienda
	end

	def vende
		if @tienda.productos > 1
			@tienda.saldo += 10
			@tienda.productos -= 1
		else
			return "no hay con que"
		end
	end
end

class Cliente < Usuario
	def initialize(saldo)
		@saldo = 100
	end

	def compra
		if @saldo > 10
			@saldo -= 10
		else
			puts "no hay dinero"
		end
	end
end
def user_flow
		respuesta = 0
		cafe = Tienda.new
		while respuesta != "3"
			puts "Bienvenido al cafe"
			puts "-------------------------------------"
			puts "Escoge el numero de una opcion"
			puts "1. Login"
			puts "2. Register"
			puts "3. Exit"
			respuesta = gets.chomp
			if respuesta == "1"
				puts "usuario"
				usuario = gets.chomp
				puts "contra"
				contra = gets.chomp
				cafe.login(usuario, contra)
			elsif respuesta == "2"
				puts "please register to login"
				puts "choose a username"
				usuario = gets.chomp
				puts "type your password"
				contra = gets.chomp
				cafe.register(usuario,contra)
			end
		end
end

user_flow




