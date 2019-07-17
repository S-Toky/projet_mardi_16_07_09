def is_multiple_of_3_or_5?(current_number)
	if current_number % 3 == 0 || current_number % 5 == 0
		return true
	else
		return false
	end
end


def sum_of_3_or_5_multiples(final_number)
  if final_number.class != Integer || final_number < 0
    return "Yo ! Je ne prends que les entiers naturels."
  end

  final_sum = 0 
  current_number = 0
  final_number.times do |i|
    current_number = i

    if is_multiple_of_3_or_5?(current_number)
      final_sum += current_number
    end
  end
  return final_sum
end
