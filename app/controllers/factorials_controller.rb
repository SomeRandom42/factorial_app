class FactorialsController < ApplicationController
    
   
  # after_create :set_result, on: :create
   
   
    def index
        @factorials = Factorial.all
        @factorial = Factorial.new
    end  
    
    def create
       @factorial = Factorial.create(params.require(:factorial).permit(:number))
      if @factorial.invalid?
            flash[:error] = "Invalid data entry"
      else
         flash[:notice] = "Factorial Created"
            
      end
       redirect_to root_path
    end    
    
    
    # private
    #   def set_result
    #     self.result =Factorial.factorial(@factorial.number)
      
    #   end
    
end
