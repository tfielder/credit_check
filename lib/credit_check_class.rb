class CreditCheck
  attr_accessor :card

  def initialize
    @card
  end

  def set_card_number(number)
    number.to_s
    @card = number
  end

  def get_card_number
    puts "Type in the card number"
    number = gets.chomp
    return number
  end

  def reverse(card)
    card = card.to_s
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

  #def check(card)
  #end


  def double_every_other_number(card)    #return to me
     card_array = []
     index = 0
     card.each do |number|
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

  def sum_array(card)
    summation = 0
    card.each do |digit|
      summation += digit
    end
    return summation
  end

  def check_validity(summation)
    if summation % 10 == 0
      #puts "The number is valid!"
      return true
    else
      #puts "The number is invalid!"
      return false
    end
  end

  def algorithm(card_number)
    card_number = reverse(card_number)
    card_number = divide_string(card_number)
    card_number = convert_to_i(card_number)
    card_number = double_every_other_number(card_number)
    card_number = sum_double_digits(card_number)
    summation = sum_array(card_number)
    validity = check_validity(summation)
    return validity
  end

  def valid_number?(card_number)
    @card = card_number
    validity = algorithm(card_number)
    return validity
  end

  def validation_output(card)
    validity = valid_number?(card)
    if validity == true
      validity = "valid"
    else
      validity = "invalid"
    end
    "The number #{@card} is #{validity}"
  end

end

#Luhn Algorithm
#reverse the card number order
#card_number = reverse(card_number)

#Turn card number string into an array
#card_number = divide_string(card_number)

#Convert the string array into integers
#card_number = convert_to_i(card_number)

#Double every other digit
#card_number = double_every_other_number(card_number)

#Sum any digits over 10
#card_number = sum_double_digits(card_number)

#Sum all of the digits
#summation = card_number.sum     #sum the elements of the array

#Check to see if the sum modulo ten == 0 and print valid or invalid
#validity = check_validity(summation)
