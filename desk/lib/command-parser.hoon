/-  *surf
|%
++  command-parser
  |=  =bowl:gall
  ;~  pose
    parse-set-url
    parse-printer
  ==
::    
++  parse-set-url
  ;~  (glue ace)
    (cold %set-url (jest ';set-url'))
    qut
  ==
++  parse-printer  (cold [%printer ~] (jest ';printer'))
--
