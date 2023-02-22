/-  *surf
/+  *command-parser, shoe, verb, dbug, default-agent,
    server, schooner,
    surf :: import when testing to force compilation
/*  surf-ui  %html  /app/surf-ui/html
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
  :_  this(url 'https://www.example.com/')
  [%pass /eyre/connect %arvo %e %connect `/apps/surf %surf]~
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
  |^
  ?+    mark  (on-poke:def mark vase)
      %surf-action
    ?>  =(src our):bowl
    =/  axn  !<(action vase)
    ?-    -.axn
        %set-url
      ~&  "Setting url to {(trip url.axn)}..."
      :_  this(url url.axn)
      [%give %fact ~[/url] surf-update+!>([%set-url url.axn])]~
    ==
    ::
      %handle-http-request
    =^  cards  state
      (handle-http !<([@ta =inbound-request:eyre] vase))
    [cards this]
  ==
  ++  handle-http
    |=  [eyre-id=@ta =inbound-request:eyre]
    ^-  (quip card _state)
    =/  ,request-line:server
      (parse-request-line:server url.request.inbound-request)
    =+  send=(cury response:schooner eyre-id)
    ::
    ~&  inbound-request
    ?+    method.request.inbound-request  
      [(send 405 ~ %stock ~) state]
      ::
        %'GET'
      ?+    site  
          :_(state (send 404 ~ %plain "404 - Not Found"))
        ::
          [%apps %surf ~]
        ?.  authenticated.inbound-request
          :_(state (send 302 ~ %login-redirect '/apps/surf'))
        :_(state (send 200 ~ %html surf-ui))
      == 
    ==
  --
::
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?>  =(our.bowl src.bowl)
  ?+    path  (on-watch:def path)
      [%url ~]
    :_(this [%give %fact ~ surf-update+!>([%set-url url])]~)
    ::
      [%http-response *]
    [~ this]
  ==
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
::
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  ?+  sign-arvo  (on-arvo:def wire sign-arvo)
      [%eyre %bound *]
    ~?  !accepted.sign-arvo
      [dap.bowl 'eyre bind rejected!' binding.sign-arvo]
    [~ this]
  ==
::
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
