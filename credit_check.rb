
def get_card_number
  puts "Type in the card number"
  number = gets.chomp
  return number
end
# Your Luhn Algorithm Here
  #reverse the digits
def reverse(card)
  card = card.reverse
  return card
end

def divide_string(card)
  card = card.chars
  return card
end

def convert_to_i(card)
  card_array = []
  card.each do |index|
    card_array << index.to_i
  end
  return card_array
end

def check(card)
  #puts "Your card number is: #{card_number}"
end


def double_every_other_number(card)    #return to me
   card_array = []
   index = 0
   card.each do |number|
     #puts index
     if (index % 2) != 0
       card_array << number * 2
     else
       card_array << number
     end
    index += 1
  end
   return card_array
 end


def sum_double_digits(card)
  card_array = []
  card.each do |number|
    if number >= 10
      number = number.to_s   #change to a string
      summation = number[0].to_i + number[1].to_i      #add the digits
      card_array << summation
    else
      card_array << number
    end
  end
  return card_array
end


def check_validity(sum)
  if sum % 10 == 0
    puts "The number is valid!"
  else
    puts "The number is invalid!"
  end
end




card_number = "4929735477250543"

#Luhn Algorithm
#reverse the card number order
card_number = reverse(card_number)

#Turn card number string into an array
card_number = divide_string(card_number)

#Convert the string array into integers
card_number = convert_to_i(card_number)

#Double every other digit
card_number = double_every_other_number(card_number)

#Sum any digits over 10
card_number = sum_double_digits(card_number)

#Sum all of the digits
summation = card_number.sum     #sum the elements of the array

#Check to see if the sum modulo ten == 0 and print valid or invalid
validity = check_validity(summation)
