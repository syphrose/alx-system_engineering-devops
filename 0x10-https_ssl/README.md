HTTPS - SSL

DNS
DNS is, in simple words, the technology that translates human-adapted, text-based domain names to machine-adapted, numerical-based IP.

Round Robin DNS
Round robin DNS is nothing but a simple technique of load balancing various Internet services such as Web server, e-mail server by creating multiple DNS A records with the same name.
It can be used for:
Load distribution.
Load balancing.
Fault-tolerance service.

NS Record
An NS record delegates a subdomain to a set of name servers. Whenever you delegate a domain to DNSimple, the TLD authorities place NS records for your domain in the TLD name servers pointing to us.
If you want to delegate a registered domain name to a different DNS provider, you can do that through the domain’s Manage page. You can’t remove or change the NS records for your domain in the Advanced Editor page.

SOA Records
An SOA record is a Start of Authority. Every domain must have a Start of Authority record at the cutover point where the domain is delegated from its parent domain.
The SOA record includes the following details:

The primary name server for the domain, which is ns1.dnsimple.com or the first name server in the vanity name server list.
The responsible party for the domain: admin.dnsimple.com.
A timestamp that changes whenever you update your domain.
The number of seconds before the zone should be refreshed.
The number of seconds before a failed refresh should be retried.
The upper limit in seconds before a zone is considered no longer authoritative.
The negative result TTL (for example, how long a resolver should consider a negative result for a subdomain to be valid before retrying).
You can’t configure these values yourself.

The root domain and sub domain - differences
A root domain is the parent domain to a sub domain, and its name is not, and can not be divided by a dot.

While creating any domain at a website of domain provider, the provider system will always ask you to choose a domain name without a dot in the name. In other words, the address of the root domain may be mydomain.com but it can never be my.domain.com. Domain providers block the ability to create such a root domain until you type a name without the dot. Why?

The dot in the domain name delimits the sub domain name (the part of the name before the dot, eg. www.my.) and the root domain name ( the part after the dot, ie .domain.com). This means that the address my.domain.com is a sub domain of the root domain, whose name is domain.com

In an administrator panel at domain provider account, you can create any number of sub domains. This means that for the root domain called domain.com it is possible to create different sub domains eg. my.domain.com, your.domain.com, school.domain.com… Creating multiple sub domains is always free and does not require you to set up new accounts on a domain provider website.


