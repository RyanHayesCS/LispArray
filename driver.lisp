"Ryan Hayes
 Spring 2016
 This driver file calls the functions of
 Array.lisp in order to show how they work"

(defun driver-start()
  "runs the array functions to test program"
  (print "Make a 3 x 4 array")
  (print (setf testArrayA (my-make-array '(3 4))));test my-make-array
  (terpri)
  (print "Return 1st ([0]) dimension of array")
  (print (my-array-dimension testArrayA 0));test my-array-dimension
  (terpri)
  (print "Return 2nd ([1]) dimension of array")
  (print (my-array-dimension testArrayA 1));test my-array-dimension on new dimension
  (terpri)
  (print "Create copy of array with 1x1 of array set to 4")
  (print (setf testArrayB (my-set-aref testArrayA 4 '(1 1))));create copy of array and insert new value
  (terpri)
  (print "Print value at 1 x 1 of new array")
  (print (my-aref testArrayB '(1 1)));retrieve value at certain coords
  (terpri)
  (print "create a copy of newest array with 2 x 2 of array set to 5")
  (print (setf testArrayC (my-set-aref testArrayB 5 '(2 2))));create copy of array and insert new value
  (terpri)
  (print "Print value at 2 x 2 of newest array")
  (print (my-aref testArrayC '(2 2)));retrieve value at certain coords
    t) ;returns true so the last function called doesnt get printed twice
  
	
  
