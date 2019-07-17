=begin
def decripte(lettre, chiffre)
	valeur = ""	#initialisation d'une chaine vide
  lettre.scan(/./) do |i| #refaire à nouveau chaque caractère de la chaine
  	if ("a".."z").include? (i.downcase)#verification de chaque lettre de "a" à "z" 
      chiffre.times {i = i.next}
  	end
      valeur << i[-1]
  end
    return valeur	
=end


def decripte(lettre,chiffre)
	valeur = lettre.ord
	if valeur <65 || (valeur >90 && valeur < 97) || valeur > 122
		return valeur.chr
	end

	if valeur >= 65 && valeur <= 90
		valeur += chiffre
		if valeur > 90
			rest = valeur - 90
			valeur = 64 + rest
			return valeur.chr
		else
			return valeur.chr
		end
	else
		if valeur >= 97 && valeur <= 122
		valeur += chiffre
			if valeur > 122
				rest = valeur - 122
				valeur = 96 + rest
				return valeur.chr
			else
				return valeur.chr
			end
		end
	end
end

def caesar_cipher(message, chiffre)
	if chiffre < 0 || (chiffre.class != Integer) || chiffre > 25
		return "Yo ! Je ne prends que les entiers naturels. TG of 0 to 25"
	end

	message_crypter = ""
	array_of_message = message.chars
	array_of_message.length.times do |i|
		message_crypter += decripte(array_of_message[i],chiffre)
	end
	return message_crypter
end