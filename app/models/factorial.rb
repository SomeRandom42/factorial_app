class Factorial < ApplicationRecord
  validates :number, numericality: { greater_than_or_equal_to: 0}
  validates :number, uniqueness: true
  validates :number, presence: true
  
  
  after_create :set_result, on: :create
  
  def self.factorial(number)
    _factorial(number, 1)
  end

  private

  def self._factorial(number, value)
    # write your solution here
    if number == 0 || number == 1
      value 
      
    else 
       self._factorial(number-1,  value * number)
  
    end  
  end
  
   
      def set_result
        self.result =  Factorial.factorial(self.number)
      
      end
    

    
end
