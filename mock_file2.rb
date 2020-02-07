$arr= ["hello","w234","wassup","23333",1 ,"ab12"]

print ("#{$arr}\n")
class Strings
    def Imp()
        @arr2 = Array.new
        @arr3 = Array.new
        @arr4 = Array.new
        $arr.each do |x|
            if x.class == Fixnum
                    @arr2.push(x)
                elsif x.class == String   
                    @arr3.push(x)
                else
                    @arr4.push(x)
             end
        end    
        
        $arr.each do |x|
            if x.class == Fixnum
                    @arr2.push(x)
                elsif x.class == String   
                    @arr3.push(x)
                else
                    @arr4.push(x)
             end
        end 
   end
end
