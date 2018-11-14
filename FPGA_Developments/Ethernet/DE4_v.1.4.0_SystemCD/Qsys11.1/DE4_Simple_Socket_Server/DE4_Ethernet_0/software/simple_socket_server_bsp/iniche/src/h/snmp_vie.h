/* snmp_vie.h

	'.h' file Generated by InterNiche Technologies Inc. MIB Compiler

	Copyright 1993-2003 by InterNiche Technologies Inc.

*/


#ifndef SNMP_VIE_H
#define SNMP_VIE_H

/* Tokens for passing to "var_" routines. These can
serve as offsets into the generated MIB group tables.
*/


/* tokens for 'system' group */
#define SYSDESCR	0
#define SYSOBJECTID	SYSDESCR+4
#define SYSUPTIME	SYSOBJECTID+4
#define SYSCONTACT	SYSUPTIME+4
#define SYSNAME	SYSCONTACT+4
#define SYSLOCATION	SYSNAME+4
#define SYSSERVICES	SYSLOCATION+4
#define SYSORLASTCHANGE	SYSSERVICES+4

/* tokens for 'sysOREntry' group */
#define SYSORINDEX	0
#define SYSORID	SYSORINDEX+4
#define SYSORDESCR	SYSORID+4
#define SYSORUPTIME	SYSORDESCR+4

/* tokens for 'interfaces' group */
#define IFNUMBER	0

/* tokens for 'ifEntry' group */
#define IFINDEX	0
#define IFDESCR	IFINDEX+4
#define IFTYPE	IFDESCR+4
#define IFMTU	IFTYPE+4
#define IFSPEED	IFMTU+4
#define IFPHYSADDRESS	IFSPEED+4
#define IFADMINSTATUS	IFPHYSADDRESS+4
#define IFOPERSTATUS	IFADMINSTATUS+4
#define IFLASTCHANGE	IFOPERSTATUS+4
#define IFINOCTETS	IFLASTCHANGE+4
#define IFINUCASTPKTS	IFINOCTETS+4
#define IFINNUCASTPKTS	IFINUCASTPKTS+4
#define IFINDISCARDS	IFINNUCASTPKTS+4
#define IFINERRORS	IFINDISCARDS+4
#define IFINUNKNOWNPROTOS	IFINERRORS+4
#define IFOUTOCTETS	IFINUNKNOWNPROTOS+4
#define IFOUTUCASTPKTS	IFOUTOCTETS+4
#define IFOUTNUCASTPKTS	IFOUTUCASTPKTS+4
#define IFOUTDISCARDS	IFOUTNUCASTPKTS+4
#define IFOUTERRORS	IFOUTDISCARDS+4
#define IFOUTQLEN	IFOUTERRORS+4
#define IFSPECIFIC	IFOUTQLEN+4

/* tokens for 'atEntry' group */
#define ATIFINDEX	0
#define ATPHYSADDRESS	ATIFINDEX+4
#define ATNETADDRESS	ATPHYSADDRESS+4

/* tokens for 'ip' group */
#define IPFORWARDING	0
#define IPDEFAULTTTL	IPFORWARDING+4
#define IPINRECEIVES	IPDEFAULTTTL+4
#define IPINHDRERRORS	IPINRECEIVES+4
#define IPINADDRERRORS	IPINHDRERRORS+4
#define IPFORWDATAGRAMS	IPINADDRERRORS+4
#define IPINUNKNOWNPROTOS	IPFORWDATAGRAMS+4
#define IPINDISCARDS	IPINUNKNOWNPROTOS+4
#define IPINDELIVERS	IPINDISCARDS+4
#define IPOUTREQUESTS	IPINDELIVERS+4
#define IPOUTDISCARDS	IPOUTREQUESTS+4
#define IPOUTNOROUTES	IPOUTDISCARDS+4
#define IPREASMTIMEOUT	IPOUTNOROUTES+4
#define IPREASMREQDS	IPREASMTIMEOUT+4
#define IPREASMOKS	IPREASMREQDS+4
#define IPREASMFAILS	IPREASMOKS+4
#define IPFRAGOKS	IPREASMFAILS+4
#define IPFRAGFAILS	IPFRAGOKS+4
#define IPFRAGCREATES	IPFRAGFAILS+4
#define IPROUTINGDISCARDS	IPFRAGCREATES+4

/* tokens for 'ipAddrEntry' group */
#define IPADENTADDR	0
#define IPADENTIFINDEX	IPADENTADDR+4
#define IPADENTNETMASK	IPADENTIFINDEX+4
#define IPADENTBCASTADDR	IPADENTNETMASK+4
#define IPADENTREASMMAXSIZE	IPADENTBCASTADDR+4

/* tokens for 'ipRouteEntry' group */
#define IPROUTEDEST	0
#define IPROUTEIFINDEX	IPROUTEDEST+4
#define IPROUTEMETRIC1	IPROUTEIFINDEX+4
#define IPROUTEMETRIC2	IPROUTEMETRIC1+4
#define IPROUTEMETRIC3	IPROUTEMETRIC2+4
#define IPROUTEMETRIC4	IPROUTEMETRIC3+4
#define IPROUTENEXTHOP	IPROUTEMETRIC4+4
#define IPROUTETYPE	IPROUTENEXTHOP+4
#define IPROUTEPROTO	IPROUTETYPE+4
#define IPROUTEAGE	IPROUTEPROTO+4
#define IPROUTEMASK	IPROUTEAGE+4
#define IPROUTEMETRIC5	IPROUTEMASK+4
#define IPROUTEINFO	IPROUTEMETRIC5+4

/* tokens for 'ipNetToMediaEntry' group */
#define IPNETTOMEDIAIFINDEX	0
#define IPNETTOMEDIAPHYSADDRESS	IPNETTOMEDIAIFINDEX+4
#define IPNETTOMEDIANETADDRESS	IPNETTOMEDIAPHYSADDRESS+4
#define IPNETTOMEDIATYPE	IPNETTOMEDIANETADDRESS+4

/* tokens for 'icmp' group */
#define ICMPINMSGS	0
#define ICMPINERRORS	ICMPINMSGS+4
#define ICMPINDESTUNREACHS	ICMPINERRORS+4
#define ICMPINTIMEEXCDS	ICMPINDESTUNREACHS+4
#define ICMPINPARMPROBS	ICMPINTIMEEXCDS+4
#define ICMPINSRCQUENCHS	ICMPINPARMPROBS+4
#define ICMPINREDIRECTS	ICMPINSRCQUENCHS+4
#define ICMPINECHOS	ICMPINREDIRECTS+4
#define ICMPINECHOREPS	ICMPINECHOS+4
#define ICMPINTIMESTAMPS	ICMPINECHOREPS+4
#define ICMPINTIMESTAMPREPS	ICMPINTIMESTAMPS+4
#define ICMPINADDRMASKS	ICMPINTIMESTAMPREPS+4
#define ICMPINADDRMASKREPS	ICMPINADDRMASKS+4
#define ICMPOUTMSGS	ICMPINADDRMASKREPS+4
#define ICMPOUTERRORS	ICMPOUTMSGS+4
#define ICMPOUTDESTUNREACHS	ICMPOUTERRORS+4
#define ICMPOUTTIMEEXCDS	ICMPOUTDESTUNREACHS+4
#define ICMPOUTPARMPROBS	ICMPOUTTIMEEXCDS+4
#define ICMPOUTSRCQUENCHS	ICMPOUTPARMPROBS+4
#define ICMPOUTREDIRECTS	ICMPOUTSRCQUENCHS+4
#define ICMPOUTECHOS	ICMPOUTREDIRECTS+4
#define ICMPOUTECHOREPS	ICMPOUTECHOS+4
#define ICMPOUTTIMESTAMPS	ICMPOUTECHOREPS+4
#define ICMPOUTTIMESTAMPREPS	ICMPOUTTIMESTAMPS+4
#define ICMPOUTADDRMASKS	ICMPOUTTIMESTAMPREPS+4
#define ICMPOUTADDRMASKREPS	ICMPOUTADDRMASKS+4

/* tokens for 'tcp' group */
#define TCPRTOALGORITHM	0
#define TCPRTOMIN	TCPRTOALGORITHM+4
#define TCPRTOMAX	TCPRTOMIN+4
#define TCPMAXCONN	TCPRTOMAX+4
#define TCPACTIVEOPENS	TCPMAXCONN+4
#define TCPPASSIVEOPENS	TCPACTIVEOPENS+4
#define TCPATTEMPTFAILS	TCPPASSIVEOPENS+4
#define TCPESTABRESETS	TCPATTEMPTFAILS+4
#define TCPCURRESTAB	TCPESTABRESETS+4
#define TCPINSEGS	TCPCURRESTAB+4
#define TCPOUTSEGS	TCPINSEGS+4
#define TCPRETRANSSEGS	TCPOUTSEGS+4
#define TCPINERRS	TCPRETRANSSEGS+4
#define TCPOUTRSTS	TCPINERRS+4

/* tokens for 'tcpConnEntry' group */
#define TCPCONNSTATE	0
#define TCPCONNLOCALADDRESS	TCPCONNSTATE+4
#define TCPCONNLOCALPORT	TCPCONNLOCALADDRESS+4
#define TCPCONNREMADDRESS	TCPCONNLOCALPORT+4
#define TCPCONNREMPORT	TCPCONNREMADDRESS+4

/* tokens for 'udp' group */
#define UDPINDATAGRAMS	0
#define UDPNOPORTS	UDPINDATAGRAMS+4
#define UDPINERRORS	UDPNOPORTS+4
#define UDPOUTDATAGRAMS	UDPINERRORS+4

/* tokens for 'udpEntry' group */
#define UDPLOCALADDRESS	0
#define UDPLOCALPORT	UDPLOCALADDRESS+4

/* tokens for 'egp' group */
#define EGPINMSGS	0
#define EGPINERRORS	EGPINMSGS+4
#define EGPOUTMSGS	EGPINERRORS+4
#define EGPOUTERRORS	EGPOUTMSGS+4
#define EGPAS	EGPOUTERRORS+4

/* tokens for 'egpNeighEntry' group */
#define EGPNEIGHSTATE	0
#define EGPNEIGHADDR	EGPNEIGHSTATE+4
#define EGPNEIGHAS	EGPNEIGHADDR+4
#define EGPNEIGHINMSGS	EGPNEIGHAS+4
#define EGPNEIGHINERRS	EGPNEIGHINMSGS+4
#define EGPNEIGHOUTMSGS	EGPNEIGHINERRS+4
#define EGPNEIGHOUTERRS	EGPNEIGHOUTMSGS+4
#define EGPNEIGHINERRMSGS	EGPNEIGHOUTERRS+4
#define EGPNEIGHOUTERRMSGS	EGPNEIGHINERRMSGS+4
#define EGPNEIGHSTATEUPS	EGPNEIGHOUTERRMSGS+4
#define EGPNEIGHSTATEDOWNS	EGPNEIGHSTATEUPS+4
#define EGPNEIGHINTERVALHELLO	EGPNEIGHSTATEDOWNS+4
#define EGPNEIGHINTERVALPOLL	EGPNEIGHINTERVALHELLO+4
#define EGPNEIGHMODE	EGPNEIGHINTERVALPOLL+4
#define EGPNEIGHEVENTTRIGGER	EGPNEIGHMODE+4

/* tokens for 'snmp' group */
#define SNMPINPKTS	0
#define SNMPOUTPKTS	SNMPINPKTS+4
#define SNMPINBADVERSIONS	SNMPOUTPKTS+4
#define SNMPINBADCOMMUNITYNAMES	SNMPINBADVERSIONS+4
#define SNMPINBADCOMMUNITYUSES	SNMPINBADCOMMUNITYNAMES+4
#define SNMPINASNPARSEERRS	SNMPINBADCOMMUNITYUSES+4
#define SNMPINTOOBIGS	SNMPINASNPARSEERRS+4
#define SNMPINNOSUCHNAMES	SNMPINTOOBIGS+4
#define SNMPINBADVALUES	SNMPINNOSUCHNAMES+4
#define SNMPINREADONLYS	SNMPINBADVALUES+4
#define SNMPINGENERRS	SNMPINREADONLYS+4
#define SNMPINTOTALREQVARS	SNMPINGENERRS+4
#define SNMPINTOTALSETVARS	SNMPINTOTALREQVARS+4
#define SNMPINGETREQUESTS	SNMPINTOTALSETVARS+4
#define SNMPINGETNEXTS	SNMPINGETREQUESTS+4
#define SNMPINSETREQUESTS	SNMPINGETNEXTS+4
#define SNMPINGETRESPONSES	SNMPINSETREQUESTS+4
#define SNMPINTRAPS	SNMPINGETRESPONSES+4
#define SNMPOUTTOOBIGS	SNMPINTRAPS+4
#define SNMPOUTNOSUCHNAMES	SNMPOUTTOOBIGS+4
#define SNMPOUTBADVALUES	SNMPOUTNOSUCHNAMES+4
#define SNMPOUTGENERRS	SNMPOUTBADVALUES+4
#define SNMPOUTGETREQUESTS	SNMPOUTGENERRS+4
#define SNMPOUTGETNEXTS	SNMPOUTGETREQUESTS+4
#define SNMPOUTSETREQUESTS	SNMPOUTGETNEXTS+4
#define SNMPOUTGETRESPONSES	SNMPOUTSETREQUESTS+4
#define SNMPOUTTRAPS	SNMPOUTGETRESPONSES+4
#define SNMPENABLEAUTHENTRAPS	SNMPOUTTRAPS+4
#define SNMPSILENTDROPS	SNMPENABLEAUTHENTRAPS+4
#define SNMPPROXYDROPS	SNMPSILENTDROPS+4

/* tokens for 'snmpTrap' group */
#define SNMPTRAPOID	0
#define SNMPTRAPENTERPRISE	SNMPTRAPOID+4

/* tokens for 'snmpSet' group */
#define SNMPSETSERIALNO	0

/* tokens for 'snmpEngine' group */
#define SNMPENGINEID	0
#define SNMPENGINEBOOTS	SNMPENGINEID+4
#define SNMPENGINETIME	SNMPENGINEBOOTS+4
#define SNMPENGINEMAXMESSAGESIZE	SNMPENGINETIME+4

/* tokens for 'snmpMPDStats' group */
#define SNMPUNKNOWNSECURITYMODELS	0
#define SNMPINVALIDMSGS	SNMPUNKNOWNSECURITYMODELS+4
#define SNMPUNKNOWNPDUHANDLERS	SNMPINVALIDMSGS+4

/* tokens for 'snmpTargetObjects' group */
#define SNMPTARGETSPINLOCK	0
#define SNMPUNAVAILABLECONTEXTS	SNMPTARGETSPINLOCK+4
#define SNMPUNKNOWNCONTEXTS	SNMPUNAVAILABLECONTEXTS+4

/* tokens for 'snmpTargetAddrEntry' group */
#define SNMPTARGETADDRNAME	0
#define SNMPTARGETADDRTDOMAIN	SNMPTARGETADDRNAME+4
#define SNMPTARGETADDRTADDRESS	SNMPTARGETADDRTDOMAIN+4
#define SNMPTARGETADDRTIMEOUT	SNMPTARGETADDRTADDRESS+4
#define SNMPTARGETADDRRETRYCOUNT	SNMPTARGETADDRTIMEOUT+4
#define SNMPTARGETADDRTAGLIST	SNMPTARGETADDRRETRYCOUNT+4
#define SNMPTARGETADDRPARAMS	SNMPTARGETADDRTAGLIST+4
#define SNMPTARGETADDRSTORAGETYPE	SNMPTARGETADDRPARAMS+4
#define SNMPTARGETADDRROWSTATUS	SNMPTARGETADDRSTORAGETYPE+4

/* tokens for 'snmpTargetParamsEntry' group */
#define SNMPTARGETPARAMSNAME	0
#define SNMPTARGETPARAMSMPMODEL	SNMPTARGETPARAMSNAME+4
#define SNMPTARGETPARAMSSECURITYMODEL	SNMPTARGETPARAMSMPMODEL+4
#define SNMPTARGETPARAMSSECURITYNAME	SNMPTARGETPARAMSSECURITYMODEL+4
#define SNMPTARGETPARAMSSECURITYLEVEL	SNMPTARGETPARAMSSECURITYNAME+4
#define SNMPTARGETPARAMSSTORAGETYPE	SNMPTARGETPARAMSSECURITYLEVEL+4
#define SNMPTARGETPARAMSROWSTATUS	SNMPTARGETPARAMSSTORAGETYPE+4

/* tokens for 'snmpNotifyEntry' group */
#define SNMPNOTIFYNAME	0
#define SNMPNOTIFYTAG	SNMPNOTIFYNAME+4
#define SNMPNOTIFYTYPE	SNMPNOTIFYTAG+4
#define SNMPNOTIFYSTORAGETYPE	SNMPNOTIFYTYPE+4
#define SNMPNOTIFYROWSTATUS	SNMPNOTIFYSTORAGETYPE+4

/* tokens for 'snmpNotifyFilterProfileEntry' group */
#define SNMPNOTIFYFILTERPROFILENAME	0
#define SNMPNOTIFYFILTERPROFILESTORTYPE	SNMPNOTIFYFILTERPROFILENAME+4
#define SNMPNOTIFYFILTERPROFILEROWSTATUS	SNMPNOTIFYFILTERPROFILESTORTYPE+4

/* tokens for 'snmpNotifyFilterEntry' group */
#define SNMPNOTIFYFILTERSUBTREE	0
#define SNMPNOTIFYFILTERMASK	SNMPNOTIFYFILTERSUBTREE+4
#define SNMPNOTIFYFILTERTYPE	SNMPNOTIFYFILTERMASK+4
#define SNMPNOTIFYFILTERSTORAGETYPE	SNMPNOTIFYFILTERTYPE+4
#define SNMPNOTIFYFILTERROWSTATUS	SNMPNOTIFYFILTERSTORAGETYPE+4

/* tokens for 'usmStats' group */
#define USMSTATSUNSUPPORTEDSECLEVELS	0
#define USMSTATSNOTINTIMEWINDOWS	USMSTATSUNSUPPORTEDSECLEVELS+4
#define USMSTATSUNKNOWNUSERNAMES	USMSTATSNOTINTIMEWINDOWS+4
#define USMSTATSUNKNOWNENGINEIDS	USMSTATSUNKNOWNUSERNAMES+4
#define USMSTATSWRONGDIGESTS	USMSTATSUNKNOWNENGINEIDS+4
#define USMSTATSDECRYPTIONERRORS	USMSTATSWRONGDIGESTS+4

/* tokens for 'usmUser' group */
#define USMUSERSPINLOCK	0

/* tokens for 'usmUserEntry' group */
#define USMUSERENGINEID	0
#define USMUSERNAME	USMUSERENGINEID+4
#define USMUSERSECURITYNAME	USMUSERNAME+4
#define USMUSERCLONEFROM	USMUSERSECURITYNAME+4
#define USMUSERAUTHPROTOCOL	USMUSERCLONEFROM+4
#define USMUSERAUTHKEYCHANGE	USMUSERAUTHPROTOCOL+4
#define USMUSEROWNAUTHKEYCHANGE	USMUSERAUTHKEYCHANGE+4
#define USMUSERPRIVPROTOCOL	USMUSEROWNAUTHKEYCHANGE+4
#define USMUSERPRIVKEYCHANGE	USMUSERPRIVPROTOCOL+4
#define USMUSEROWNPRIVKEYCHANGE	USMUSERPRIVKEYCHANGE+4
#define USMUSERPUBLIC	USMUSEROWNPRIVKEYCHANGE+4
#define USMUSERSTORAGETYPE	USMUSERPUBLIC+4
#define USMUSERSTATUS	USMUSERSTORAGETYPE+4

/* tokens for 'vacmContextEntry' group */
#define VACMCONTEXTNAME	0

/* tokens for 'vacmSecurityToGroupEntry' group */
#define VACMSECURITYMODEL	0
#define VACMSECURITYNAME	VACMSECURITYMODEL+4
#define VACMGROUPNAME	VACMSECURITYNAME+4
#define VACMSECURITYTOGROUPSTORAGETYPE	VACMGROUPNAME+4
#define VACMSECURITYTOGROUPSTATUS	VACMSECURITYTOGROUPSTORAGETYPE+4

/* tokens for 'vacmAccessEntry' group */
#define VACMACCESSCONTEXTPREFIX	0
#define VACMACCESSSECURITYMODEL	VACMACCESSCONTEXTPREFIX+4
#define VACMACCESSSECURITYLEVEL	VACMACCESSSECURITYMODEL+4
#define VACMACCESSCONTEXTMATCH	VACMACCESSSECURITYLEVEL+4
#define VACMACCESSREADVIEWNAME	VACMACCESSCONTEXTMATCH+4
#define VACMACCESSWRITEVIEWNAME	VACMACCESSREADVIEWNAME+4
#define VACMACCESSNOTIFYVIEWNAME	VACMACCESSWRITEVIEWNAME+4
#define VACMACCESSSTORAGETYPE	VACMACCESSNOTIFYVIEWNAME+4
#define VACMACCESSSTATUS	VACMACCESSSTORAGETYPE+4

/* tokens for 'vacmMIBViews' group */
#define VACMVIEWSPINLOCK	0

/* tokens for 'vacmViewTreeFamilyEntry' group */
#define VACMVIEWTREEFAMILYVIEWNAME	0
#define VACMVIEWTREEFAMILYSUBTREE	VACMVIEWTREEFAMILYVIEWNAME+4
#define VACMVIEWTREEFAMILYMASK	VACMVIEWTREEFAMILYSUBTREE+4
#define VACMVIEWTREEFAMILYTYPE	VACMVIEWTREEFAMILYMASK+4
#define VACMVIEWTREEFAMILYSTORAGETYPE	VACMVIEWTREEFAMILYTYPE+4
#define VACMVIEWTREEFAMILYSTATUS	VACMVIEWTREEFAMILYSTORAGETYPE+4

/* tokens for 'snmpCommunityMIBObjects' group */
#define SNMPTRAPADDRESS	0
#define SNMPTRAPCOMMUNITY	SNMPTRAPADDRESS+4

/* tokens for 'snmpCommunityEntry' group */
#define SNMPCOMMUNITYINDEX	0
#define SNMPCOMMUNITYNAME	SNMPCOMMUNITYINDEX+4
#define SNMPCOMMUNITYSECURITYNAME	SNMPCOMMUNITYNAME+4
#define SNMPCOMMUNITYCONTEXTENGINEID	SNMPCOMMUNITYSECURITYNAME+4
#define SNMPCOMMUNITYCONTEXTNAME	SNMPCOMMUNITYCONTEXTENGINEID+4
#define SNMPCOMMUNITYTRANSPORTTAG	SNMPCOMMUNITYCONTEXTNAME+4
#define SNMPCOMMUNITYSTORAGETYPE	SNMPCOMMUNITYTRANSPORTTAG+4
#define SNMPCOMMUNITYSTATUS	SNMPCOMMUNITYSTORAGETYPE+4

/* tokens for 'snmpTargetAddrExtEntry' group */
#define SNMPTARGETADDRTMASK	0
#define SNMPTARGETADDRMMS	SNMPTARGETADDRTMASK+4




/* prototypes for "var_" routines in variables table.
Simply delete any that aren't used */

u_char *
var_system(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_sysOREntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_interfaces(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_ifEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_atEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_ip(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_ipAddrEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_ipRouteEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_ipNetToMediaEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_icmp(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_tcp(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_tcpConnEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_udp(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_udpEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_egp(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_egpNeighEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmp(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpTrap(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpSet(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpEngine(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpMPDStats(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpTargetObjects(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpTargetAddrEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpTargetParamsEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpNotifyEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpNotifyFilterProfileEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpNotifyFilterEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_usmStats(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_usmUser(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_usmUserEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_vacmContextEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_vacmSecurityToGroupEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_vacmAccessEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_vacmMIBViews(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_vacmViewTreeFamilyEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpCommunityMIBObjects(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpCommunityEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);

u_char *
var_snmpTargetAddrExtEntry(struct variable * vp, 
	oid* name, int * len, int exact, 
	int * var_len);



/* Recommended mib tables. If you edit these, be sure
to correct the values of the corrosponding tokens above.*/

/* MIB table for 'system' group */

struct system_mib {
	void  *	sysDescr;	/* 32 bit ptr */
	oid  *	sysObjectID;	/* 32 bit ptr */
	u_long	sysUpTime;
	void  *	sysContact;	/* 32 bit ptr */
	void  *	sysName;	/* 32 bit ptr */
	void  *	sysLocation;	/* 32 bit ptr */
	long  	sysServices;
	u_long	sysORLastChange;
};

/* MIB table for 'sysOREntry' group */

struct sysOREntry_mib {
	long  	sysORIndex;
	oid  *	sysORID;	/* 32 bit ptr */
	void  *	sysORDescr;	/* 32 bit ptr */
	u_long	sysORUpTime;
};

/* MIB table for 'interfaces' group */

struct interfaces_mib {
	long  	ifNumber;
};

/* MIB table for 'ifEntry' group */

struct ifEntry_mib {
	long  	ifIndex;
	void  *	ifDescr;	/* 32 bit ptr */
	long  	ifType;
	long  	ifMtu;
	u_long	ifSpeed;
	void  *	ifPhysAddress;	/* 32 bit ptr */
	long  	ifAdminStatus;
	long  	ifOperStatus;
	u_long	ifLastChange;
	u_long	ifInOctets;
	u_long	ifInUcastPkts;
	u_long	ifInNUcastPkts;
	u_long	ifInDiscards;
	u_long	ifInErrors;
	u_long	ifInUnknownProtos;
	u_long	ifOutOctets;
	u_long	ifOutUcastPkts;
	u_long	ifOutNUcastPkts;
	u_long	ifOutDiscards;
	u_long	ifOutErrors;
	u_long	ifOutQLen;
	oid  *	ifSpecific;	/* 32 bit ptr */
};

/* MIB table for 'atEntry' group */

struct atEntry_mib {
	long  	atIfIndex;
	void  *	atPhysAddress;	/* 32 bit ptr */
	u_long	atNetAddress;
};

/* MIB table for 'ip' group */

struct ip_mib {
	long  	ipForwarding;
	long  	ipDefaultTTL;
	u_long	ipInReceives;
	u_long	ipInHdrErrors;
	u_long	ipInAddrErrors;
	u_long	ipForwDatagrams;
	u_long	ipInUnknownProtos;
	u_long	ipInDiscards;
	u_long	ipInDelivers;
	u_long	ipOutRequests;
	u_long	ipOutDiscards;
	u_long	ipOutNoRoutes;
	long  	ipReasmTimeout;
	u_long	ipReasmReqds;
	u_long	ipReasmOKs;
	u_long	ipReasmFails;
	u_long	ipFragOKs;
	u_long	ipFragFails;
	u_long	ipFragCreates;
	u_long	ipRoutingDiscards;
};

/* MIB table for 'ipAddrEntry' group */

struct ipAddrEntry_mib {
	u_long	ipAdEntAddr;
	long  	ipAdEntIfIndex;
	u_long	ipAdEntNetMask;
	long  	ipAdEntBcastAddr;
	long  	ipAdEntReasmMaxSize;
};

/* MIB table for 'ipRouteEntry' group */

struct ipRouteEntry_mib {
	u_long	ipRouteDest;
	long  	ipRouteIfIndex;
	long  	ipRouteMetric1;
	long  	ipRouteMetric2;
	long  	ipRouteMetric3;
	long  	ipRouteMetric4;
	u_long	ipRouteNextHop;
	long  	ipRouteType;
	long  	ipRouteProto;
	long  	ipRouteAge;
	u_long	ipRouteMask;
	long  	ipRouteMetric5;
	oid  *	ipRouteInfo;	/* 32 bit ptr */
};

/* MIB table for 'ipNetToMediaEntry' group */

struct ipNetToMediaEntry_mib {
	long  	ipNetToMediaIfIndex;
	void  *	ipNetToMediaPhysAddress;	/* 32 bit ptr */
	u_long	ipNetToMediaNetAddress;
	long  	ipNetToMediaType;
};

/* MIB table for 'icmp' group */

struct icmp_mib {
	u_long	icmpInMsgs;
	u_long	icmpInErrors;
	u_long	icmpInDestUnreachs;
	u_long	icmpInTimeExcds;
	u_long	icmpInParmProbs;
	u_long	icmpInSrcQuenchs;
	u_long	icmpInRedirects;
	u_long	icmpInEchos;
	u_long	icmpInEchoReps;
	u_long	icmpInTimestamps;
	u_long	icmpInTimestampReps;
	u_long	icmpInAddrMasks;
	u_long	icmpInAddrMaskReps;
	u_long	icmpOutMsgs;
	u_long	icmpOutErrors;
	u_long	icmpOutDestUnreachs;
	u_long	icmpOutTimeExcds;
	u_long	icmpOutParmProbs;
	u_long	icmpOutSrcQuenchs;
	u_long	icmpOutRedirects;
	u_long	icmpOutEchos;
	u_long	icmpOutEchoReps;
	u_long	icmpOutTimestamps;
	u_long	icmpOutTimestampReps;
	u_long	icmpOutAddrMasks;
	u_long	icmpOutAddrMaskReps;
};

/* MIB table for 'tcp' group */

struct tcp_mib {
	long  	tcpRtoAlgorithm;
	long  	tcpRtoMin;	/* UNITS:       "milliseconds"M */
	long  	tcpRtoMax;	/* UNITS:       "milliseconds"M */
	long  	tcpMaxConn;
	u_long	tcpActiveOpens;
	u_long	tcpPassiveOpens;
	u_long	tcpAttemptFails;
	u_long	tcpEstabResets;
	u_long	tcpCurrEstab;
	u_long	tcpInSegs;
	u_long	tcpOutSegs;
	u_long	tcpRetransSegs;
	u_long	tcpInErrs;
	u_long	tcpOutRsts;
};

/* MIB table for 'tcpConnEntry' group */

struct tcpConnEntry_mib {
	long  	tcpConnState;
	u_long	tcpConnLocalAddress;
	long  	tcpConnLocalPort;
	u_long	tcpConnRemAddress;
	long  	tcpConnRemPort;
};

/* MIB table for 'udp' group */

struct udp_mib {
	u_long	udpInDatagrams;
	u_long	udpNoPorts;
	u_long	udpInErrors;
	u_long	udpOutDatagrams;
};

/* MIB table for 'udpEntry' group */

struct udpEntry_mib {
	u_long	udpLocalAddress;
	long  	udpLocalPort;
};

/* MIB table for 'egp' group */

struct egp_mib {
	u_long	egpInMsgs;
	u_long	egpInErrors;
	u_long	egpOutMsgs;
	u_long	egpOutErrors;
	long  	egpAs;
};

/* MIB table for 'egpNeighEntry' group */

struct egpNeighEntry_mib {
	long  	egpNeighState;
	u_long	egpNeighAddr;
	long  	egpNeighAs;
	u_long	egpNeighInMsgs;
	u_long	egpNeighInErrs;
	u_long	egpNeighOutMsgs;
	u_long	egpNeighOutErrs;
	u_long	egpNeighInErrMsgs;
	u_long	egpNeighOutErrMsgs;
	u_long	egpNeighStateUps;
	u_long	egpNeighStateDowns;
	long  	egpNeighIntervalHello;
	long  	egpNeighIntervalPoll;
	long  	egpNeighMode;
	long  	egpNeighEventTrigger;
};

/* MIB table for 'snmp' group */

struct snmp_mib {
	u_long	snmpInPkts;
	u_long	snmpOutPkts;
	u_long	snmpInBadVersions;
	u_long	snmpInBadCommunityNames;
	u_long	snmpInBadCommunityUses;
	u_long	snmpInASNParseErrs;
	u_long	snmpInTooBigs;
	u_long	snmpInNoSuchNames;
	u_long	snmpInBadValues;
	u_long	snmpInReadOnlys;
	u_long	snmpInGenErrs;
	u_long	snmpInTotalReqVars;
	u_long	snmpInTotalSetVars;
	u_long	snmpInGetRequests;
	u_long	snmpInGetNexts;
	u_long	snmpInSetRequests;
	u_long	snmpInGetResponses;
	u_long	snmpInTraps;
	u_long	snmpOutTooBigs;
	u_long	snmpOutNoSuchNames;
	u_long	snmpOutBadValues;
	u_long	snmpOutGenErrs;
	u_long	snmpOutGetRequests;
	u_long	snmpOutGetNexts;
	u_long	snmpOutSetRequests;
	u_long	snmpOutGetResponses;
	u_long	snmpOutTraps;
	long  	snmpEnableAuthenTraps;
	u_long	snmpSilentDrops;
	u_long	snmpProxyDrops;
};

/* MIB table for 'snmpTrap' group */

struct snmpTrap_mib {
	oid  *	snmpTrapOID;	/* 32 bit ptr */
	oid  *	snmpTrapEnterprise;	/* 32 bit ptr */
};

/* MIB table for 'snmpSet' group */

struct snmpSet_mib {
	long  	snmpSetSerialNo;
};

/* MIB table for 'snmpEngine' group */

struct snmpEngine_mib {
	void  *	snmpEngineID;	/* 32 bit ptr */
	long  	snmpEngineBoots;
	long  	snmpEngineTime;	/* UNITS:        "seconds"M */
	long  	snmpEngineMaxMessageSize;
};

/* MIB table for 'snmpMPDStats' group */

struct snmpMPDStats_mib {
	u_long	snmpUnknownSecurityModels;
	u_long	snmpInvalidMsgs;
	u_long	snmpUnknownPDUHandlers;
};

/* MIB table for 'snmpTargetObjects' group */

struct snmpTargetObjects_mib {
	long  	snmpTargetSpinLock;
	u_long	snmpUnavailableContexts;
	u_long	snmpUnknownContexts;
};

/* MIB table for 'snmpTargetAddrEntry' group */

struct snmpTargetAddrEntry_mib {
	void  *	snmpTargetAddrName;	/* 32 bit ptr */
	oid  *	snmpTargetAddrTDomain;	/* 32 bit ptr */
	void  *	snmpTargetAddrTAddress;	/* 32 bit ptr */
	long  	snmpTargetAddrTimeout;
	long  	snmpTargetAddrRetryCount;
	void  *	snmpTargetAddrTagList;	/* 32 bit ptr */
	void  *	snmpTargetAddrParams;	/* 32 bit ptr */
	long  	snmpTargetAddrStorageType;
	long  	snmpTargetAddrRowStatus;
};

/* MIB table for 'snmpTargetParamsEntry' group */

struct snmpTargetParamsEntry_mib {
	void  *	snmpTargetParamsName;	/* 32 bit ptr */
	long  	snmpTargetParamsMPModel;
	long  	snmpTargetParamsSecurityModel;
	void  *	snmpTargetParamsSecurityName;	/* 32 bit ptr */
	long  	snmpTargetParamsSecurityLevel;
	long  	snmpTargetParamsStorageType;
	long  	snmpTargetParamsRowStatus;
};

/* MIB table for 'snmpNotifyEntry' group */

struct snmpNotifyEntry_mib {
	void  *	snmpNotifyName;	/* 32 bit ptr */
	void  *	snmpNotifyTag;	/* 32 bit ptr */
	long  	snmpNotifyType;
	long  	snmpNotifyStorageType;
	long  	snmpNotifyRowStatus;
};

/* MIB table for 'snmpNotifyFilterProfileEntry' group */

struct snmpNotifyFilterProfileEntry_mib {
	void  *	snmpNotifyFilterProfileName;	/* 32 bit ptr */
	long  	snmpNotifyFilterProfileStorType;
	long  	snmpNotifyFilterProfileRowStatus;
};

/* MIB table for 'snmpNotifyFilterEntry' group */

struct snmpNotifyFilterEntry_mib {
	oid  *	snmpNotifyFilterSubtree;	/* 32 bit ptr */
	void  *	snmpNotifyFilterMask;	/* 32 bit ptr */
	long  	snmpNotifyFilterType;
	long  	snmpNotifyFilterStorageType;
	long  	snmpNotifyFilterRowStatus;
};

/* MIB table for 'usmStats' group */

struct usmStats_mib {
	u_long	usmStatsUnsupportedSecLevels;
	u_long	usmStatsNotInTimeWindows;
	u_long	usmStatsUnknownUserNames;
	u_long	usmStatsUnknownEngineIDs;
	u_long	usmStatsWrongDigests;
	u_long	usmStatsDecryptionErrors;
};

/* MIB table for 'usmUser' group */

struct usmUser_mib {
	long  	usmUserSpinLock;
};

/* MIB table for 'usmUserEntry' group */

struct usmUserEntry_mib {
	void  *	usmUserEngineID;	/* 32 bit ptr */
	void  *	usmUserName;	/* 32 bit ptr */
	void  *	usmUserSecurityName;	/* 32 bit ptr */
	oid  *	usmUserCloneFrom;	/* 32 bit ptr */
	oid  *	usmUserAuthProtocol;	/* 32 bit ptr */
	void  *	usmUserAuthKeyChange;	/* 32 bit ptr */
	void  *	usmUserOwnAuthKeyChange;	/* 32 bit ptr */
	oid  *	usmUserPrivProtocol;	/* 32 bit ptr */
	void  *	usmUserPrivKeyChange;	/* 32 bit ptr */
	void  *	usmUserOwnPrivKeyChange;	/* 32 bit ptr */
	void  *	usmUserPublic;	/* 32 bit ptr */
	long  	usmUserStorageType;
	long  	usmUserStatus;
};

/* MIB table for 'vacmContextEntry' group */

struct vacmContextEntry_mib {
	void  *	vacmContextName;	/* 32 bit ptr */
};

/* MIB table for 'vacmSecurityToGroupEntry' group */

struct vacmSecurityToGroupEntry_mib {
	long  	vacmSecurityModel;
	void  *	vacmSecurityName;	/* 32 bit ptr */
	void  *	vacmGroupName;	/* 32 bit ptr */
	long  	vacmSecurityToGroupStorageType;
	long  	vacmSecurityToGroupStatus;
};

/* MIB table for 'vacmAccessEntry' group */

struct vacmAccessEntry_mib {
	void  *	vacmAccessContextPrefix;	/* 32 bit ptr */
	long  	vacmAccessSecurityModel;
	long  	vacmAccessSecurityLevel;
	long  	vacmAccessContextMatch;
	void  *	vacmAccessReadViewName;	/* 32 bit ptr */
	void  *	vacmAccessWriteViewName;	/* 32 bit ptr */
	void  *	vacmAccessNotifyViewName;	/* 32 bit ptr */
	long  	vacmAccessStorageType;
	long  	vacmAccessStatus;
};

/* MIB table for 'vacmMIBViews' group */

struct vacmMIBViews_mib {
	long  	vacmViewSpinLock;
};

/* MIB table for 'vacmViewTreeFamilyEntry' group */

struct vacmViewTreeFamilyEntry_mib {
	void  *	vacmViewTreeFamilyViewName;	/* 32 bit ptr */
	oid  *	vacmViewTreeFamilySubtree;	/* 32 bit ptr */
	void  *	vacmViewTreeFamilyMask;	/* 32 bit ptr */
	long  	vacmViewTreeFamilyType;
	long  	vacmViewTreeFamilyStorageType;
	long  	vacmViewTreeFamilyStatus;
};

/* MIB table for 'snmpCommunityMIBObjects' group */

struct snmpCommunityMIBObjects_mib {
	u_long	snmpTrapAddress;
	void  *	snmpTrapCommunity;	/* 32 bit ptr */
};

/* MIB table for 'snmpCommunityEntry' group */

struct snmpCommunityEntry_mib {
	void  *	snmpCommunityIndex;	/* 32 bit ptr */
	void  *	snmpCommunityName;	/* 32 bit ptr */
	void  *	snmpCommunitySecurityName;	/* 32 bit ptr */
	void  *	snmpCommunityContextEngineID;	/* 32 bit ptr */
	void  *	snmpCommunityContextName;	/* 32 bit ptr */
	void  *	snmpCommunityTransportTag;	/* 32 bit ptr */
	long  	snmpCommunityStorageType;
	long  	snmpCommunityStatus;
};

/* MIB table for 'snmpTargetAddrExtEntry' group */

/* This table augments the table snmpTargetAddrEntry */
struct snmpTargetAddrExtEntry_mib {
	struct	snmpTargetAddrEntry_mib *basetbl;	/* ptr to base table */
	void  *	snmpTargetAddrTMask;	/* 32 bit ptr */
	long  	snmpTargetAddrMMS;
};

/* Following is a List of new TEXTUAL CONVENTIONS defined
   in the MIBs
*/ 
extern struct enumList en_TruthValue[] ;
extern struct enumList en_RowStatus[] ;
extern struct enumList en_StorageType[] ;
extern struct enumList en_SnmpSecurityLevel[] ;
#endif /* SNMP_VIE_H */
