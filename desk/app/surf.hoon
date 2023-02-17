/-  *surf
/+  *command-parser, shoe, verb, dbug, default-agent,
    surf :: import when testing to force compilation
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 url=@t]
+$  card  card:shoe
+$  sole-id  sole-id:shoe
++  print-green-cards
  |=  =wain
  ^-  (list card)
  %+  turn  wain
  |=  =cord
  [%shoe ~ %sole %klr [[~ ~ [~ %g]] [cord]~]~]
--
=|  state-0
=*  state  -
%-  agent:dbug
%+  verb  |
^-  agent:gall
%-  (agent:shoe command)
^-  (shoe:shoe command)
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
    des   ~(. (default:shoe this command) bowl)
::
++  on-init
  ^-  (quip card _this)
  `this(url 'https://www.example.com/')
::
++  on-save  !>(state)
::
++  on-load
  |=  ole=vase
  ^-  (quip card _this)
  =/  old=state-0  !<(state-0 ole)
  [~ this(state old)]
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+    mark  (on-poke:def mark vase)
      %surf-action
    =/  axn  !<(action vase)
    ?-    -.axn
        %set-url
      ~&  "Setting url to {(trip url.axn)}..."
      :_  this(url url.axn)
      [%give %fact ~[/url] surf-update+!>([%set-url url.axn])]~
    ==
  ==
::
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?.  ?=([%url ~] path)  (on-watch:def path)
  :_(this [%give %fact ~ surf-update+!>([%set-url url])]~)
::
++  on-leave  on-leave:def
::
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  ?.  ?=([%x %url ~] path)  (on-peek:def path)
  ``surf-view+!>(url+url)
::
++  on-agent  on-agent:def
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
::
++  command-parser
  |=  =sole-id
  ^+  |~(nail *(like [? command]))  
  %+  stag  |
  (^command-parser bowl)
::
++  tab-list
  |=  =sole-id
  ^-  (list [@t tank])
  ^tab-list
::
++  on-command
  |=  [=sole-id cmd=command]
  ^-  (quip card _this)
  =;  cards=(list card)
    [cards this]
  ?-    -.cmd
      %set-url
    [%pass / %agent [our dap]:bowl %poke surf-action+!>(cmd)]~
    ::
      %printer
    (print-green-cards [url]~)
  ==
::
++  can-connect  |=(=sole-id `?`=(our.bowl src.bowl))
++  on-connect      on-connect:des
++  on-disconnect   on-disconnect:des
--
