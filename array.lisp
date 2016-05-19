"Ryan Hayes
 Spring 2016
 These are functions that:
 1. Make an array out of lists
 2. Retreive the dimension of an array
 3. Return the value at a certain spot in an array
 4. returns a copy of an array with a new value in a certain position"

(defun my-make-array(param)
  "makes a multidimensional array of any size (full of zeroes)"
  (cond ( (null param) 0)     ;returns an error if null
	( (= (first param) 1)
	  (list (my-make-array (rest param))))	   ;return an error
  	( (null (rest param))						    ;if this is the final dimension
	  (cons 0 (my-make-array (list (- (first param) 1))))) 		    ;construct a list of 0s
	( t 
	  (cons (my-make-array (rest param)) 				    ;if its not the last dimension
		(my-make-array (cons (- (first param) 1) (rest param))))))) ;make a list of lists

(defun my-array-dimension(a index)
  "returns the nth dimension of the array" ;so if this function is called on the 0th element of an array of (2 x 3), returns 2
  (cond ( (null a) -1);if null list passed in, return error
  	( (< index 0) -1);if index is less than 0, return error
	( (= 0 index);if index is 0
	  (length a));return the size of list
	(t 
	 (my-array-dimension (first a) (- index 1)))));recurse with index decremented

(defun my-aref(a dim)
  "returns the item in the [row,column] spot in the array (assuming its 2-dimensional"
  (cond ( (< 1 (first dim));if first element of dim is less then 1
  	  (my-aref (rest a) (cons (- (first dim) 1) (rest dim))));move on to next dimension
	( (null (rest dim))
	  (first a))
	( t (my-aref (first a) (rest dim)))));recurse first of a and rest of dim

(defun my-set-aref (a value indices)
  "returns a copy of the array with the [row,column] spot set to 'value'"
  (cond ( (null indices) value)
	( (null a) (list));if we've reached the end of a list, wrap it 
	( (= (first indices) 1) ;see if first element of indices is equal to 1
	  (cons (my-set-aref (first a) value (rest indices)) ;then we construct a new list
		(my-set-aref (rest a) value (cons (- (first indices) 1) (rest indices)))))
	( (null (rest a));check if one row is left
	  (list (first a)));then go into that row
	( t (cons (first a)(my-set-aref (rest a) value (cons (- (first indices) 1) (rest indices)))))));construct new list containing 

	

  




