class NFrac
    
    # Permite leer los atributos de la class
    attr_reader :numerador, :denominador
    
    # Inicializar
    def initialize(a,b)
        if b!=0
            @numerador = a
            @denominador = b 
        end
        
        simplificar(a,b)
    end
    
    # Simplificar la fracción
    def simplificar(a,b)
        aux = mcd(a,b)
        @numerador = a/aux
        @denominador = b/aux
    end
    
    # Máximo común divisor
    def mcd(a,b)
        if b==0
            a
        else 
            mcd(b,a%b)
        end
    end

    # Mínimo común múltiplo
    def mcm(a,b)
        aux = mcd(a,b)
        minimo = (a / aux) * b
    end
    
    # Mostrar la fracción
    def to_string
        "#{@numerador}/#{@denominador}"
    end
    
    # Mostrar la fracción en punto flotante
    def to_float
        (@numerador.to_f()/@denominador.to_f)
    end
    
    def == (other)
        @numerador == other.numerador && @denominador == other.denominador
    end

    # Operación aritmética suma
    def +(other)
        minimo = mcm(@denominador, other.denominador)
	    a = @numerador * minimo / @denominador
	    b = other.numerador * minimo / other.denominador
	    return NFrac.new( a + b, minimo) # Como se devuelve la ultima expresion analizada siempre, se puede poner sin el return.
	end
	
	# Operación Aritmética de Resta
	def -(other)
	    minimo = mcm(@denominador, other.denominador)
	    a = @numerador * minimo / @denominador
	    b = other.numerador * minimo / other.denominador
	    return NFrac.new( a - b, minimo) # Como se devuelve la ultima expresion analizada siempre, se puede poner sin el return.
	end
	
	# Operación aritmética Multiplicación
	def *(other)
	    a = @numerador * other.numerador
	    b = @denominador * other.denominador
	    return NFrac.new( a, b) # Como se devuelve la ultima expresion analizada siempre, se puede poner sin el return.
	end
	
	# Operación aritmética División
	def /(other)
	    a = @numerador * other.denominador
	    b = other.numerador * @denominador
	    return NFrac.new( a, b) # Como se devuelve la ultima expresion analizada siempre, se puede poner sin el return.
    end
end

