/-  *surf
|%
++  enjs
  =,  enjs:format
  |%
  ++  enjs-update
    |=  upd=update
    ^-  json
    ?>  ?=(%set-url -.upd)
    (frond set-url+s/url.upd)
  ::
  ++  enjs-view
    |=  vyu=view
    ^-  json
    ?>  ?=(%url -.vyu)
    (frond url+s/url.vyu)
  --
++  dejs
  =,  dejs:format
  |%
  ++  dejs-action
    ^-  $-(json action)
    (of ~[set-url+so])
  --
--
