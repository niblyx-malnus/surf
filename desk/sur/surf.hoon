|%
+$  action  $%([%set-url url=@t])
+$  update  action
+$  view    $%([%url url=@t])
::
+$  command
  $?  [%set-url url=@t]
      [%printer ~]
  ==
::
++  tab-list
  ^-  (list [@t tank])
  :~  [';set-url' leaf+"set url"]
      [';printer' leaf+"print url"]
  ==
--
