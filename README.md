# cygwin-jank
Making the helpdesk more like dev ops, one script at a time. 

For the uninitiated, working help desk, the amount of massive annoyances one can encounter is really unreal. 

SCCM got you down because the clients are never active? Have some stupid application your dev's wrote in .net that has to be pushed to every computer? 

DNS issues cause a massive outage because it happened right in the middle of the DST rollback? 

If any of these are things you are encountering then this is for you. 

NOTE:

This program does have some depends. The first is cygwin and the second is M$ofts SysInternals Suite. You just need to extract them and place the in /usr/local/bin. This should just work out of the box if you have admin privs either locally or on the domain. 

A domain admin account is going to be needed in order to actively levarge these scripts against target machines. 

(I am going to assume you know what you are doing here tbh. Don't come complaining to me if it no worky.)
