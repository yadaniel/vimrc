* substituite on all lines  
  
:%s/what/with/  
first match on each line  
  
:%s/what/with/g  
all matches on whole line of each line  
  
:%s/what/with/gc  
in addition confirm each substituition 
 
* insert digraph  
  
insert mode CTRL-k 12 => ½  
  
* insert char by code  
  
insert mode CTRL-v 048 => 0  

* show mapping  
  
:map =  normal, visual, select, operator-pending  
:nmap = normal mode  
:vmap = visual and select  
:xmap = visual 
:smap = select 
:omap = operator-pending 

:map! = insert, command  
:imap = insert  
:cmap = command  

:lmap = insert, command, lang-arg 
:tmap = terminal job 

:map cc => gcc 
:map cx => gcip 
:map _f => :CtrlP<CR> 
:map _g => :LustyBufferGrep<CR> 
  
