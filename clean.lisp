(defun get-input ()
  (read-line))

(defun put-output (thing)
  (format t "~a~C" thing #\linefeed))

(defun yes? ()
    (let ((input (get-input)))
      (if (or (equal input "y")
	      (equal input "Y"))
	  t
	  nil)))

(defun no? ()
  (not (yes?)))

(defun wait-on-user ()
  (get-input)
  t)


(defun make-bed ()
  (put-output "Is the bed made?")
  (if (no?)
      (progn
	(put-output "Breath and consider the perfection to which you will make the bed")
	(wait-on-user)
	(put-output "Remove everything from bed")
	(wait-on-user)
	(put-output "Put sheets on bed")
	(wait-on-user)
	(put-output "Put blanket on bed")
	(wait-on-user)
	(put-output "Fold blanket at head")
	(wait-on-user)
	(put-output "Put pillow at head")
	(wait-on-user))))

(defun take-dishes-to-kitchen ()
  (loop
   (put-output "Scan the room. Are there dishes in the room?")
   (if (yes?)
       (progn
	 (put-output "Breath and consider the perfection to which you will take the dishes to the kitchen")
	 (wait-on-user)
	 (put-output "Gather as many dishes as you can and take them to the kitchen")
	 (wait-on-user))
       (return t))))

(defun empty-dishwasher-if-needed ()
  (put-output "Breath and cosider the perfection to which you will empty the dish washer.")
  (loop
     (put-output "Is the dishwasher empty?")
     (if (no?)
	 (progn
	   (put-output "Breath and consider the perfection to which you will move an item out of the dishwasher.")
	   (wait-on-user)
	   (put-output "Move item and place it in perfect spot.")
	   (wait-on-user))
	 (return t))))


(defun fill-dishwasher-if-needed ()
  (put-output "Breath and consider the perfection to which you will fill the dishwasher")
  (wait-on-user)
  (loop
     (put-output "Take a deep breath. Can a dish be added to the dish washer?")
     (if (yes?)
	 (progn
	   (put-output "Take a deep breath.")
	   (wait-on-user)
	   (put-output "Wash and place the dish in the dishwasher")
	   (wait-on-user))
	 (return t))))
