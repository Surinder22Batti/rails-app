# classes and objects pending
# documents in ruby pending
puts "Hello Ruby!"

BEGIN {
    puts "PROGRAM BEGIN"
    # =begin we cant set multiple comments in block
    # puts "This is for testing"
    # =end

    $contact = 123456   # global variable
    class Test
        @@count = 0    # class variable
        NAME = "XYZ"   # Constant variable
        def initialize(contact)
            @contact = contact   # instance variable
        end

        def getContact
            puts "Global contact is : #@contact"
        end

    end

    # obj = Test.new(789)
    # obj.getContact

    # xyz = [10, 20, 30, 40, 50]
    # xyz.each do |i|
    #     puts i
    # end

    # xyz = { "name" => "ab", "age" => 25, "contact" => 123456}
    # xyz.each do |key, value|
    #     puts "Key is : #{key} and Value is : #{value}"
    # end

    (0..10).each do |i|
        puts i
    end



    
}

END {
    puts "PROGRAM END"
}

