# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)
    i = 0 #This is a shut off valve for our while loop
    while i < arr.length #This constrains the loop to run only as long as arr
        x = arr[i] #Sets our variable x to whichever element we're testing.  Having
                   #arr[i] means that as i increases we advance in an orderly fashion
                   #through the elements of our array.
        arr.delete_at(i) #This removes whatever element we're testing from the array.
                         #If we didn't remove it, then the if statement below would
                         #always evaluate as true.  Thus the code that follows would 
                         #always execute and we'd just wind up deleting the array one
                         #iteration at a time.
        if arr.include?(x) == true #This searches arr for the element we've assigned
                                   #to x.  If it finds another instance of x in the 
                                   #array it returns true.  If it returns true...
            arr.delete(x) #Then all instances of x are deleted from the array.
        else #if it returns false...
            arr << x #x gets added back to the end of the array.
        i += 1 #We advance i by 1 so our loop eventually shuts off.
        end
    end
arr #This returns an arr that is composed of all elements that evaluated false, i.e.,
    #all the unique elements.
end
find_unique_elements([1, 2, "three", "three", 4])