REQUIREMENTS
	Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 20.04 LTS
All your files should end with a new line
A README.md file at the root of the folder of the project is mandatory
All your Bash script files must be executable
Your Bash scripts must pass Shellcheck without any error
Your Bash scripts must run without error
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
The second line of all your Bash scripts should be a comment explaining what is the script doing
You are not allowed to use wget.

NETWORK PROTOCOL
A network protocol is a set of established rules that specify how to format, send and receive data so that computer network endpoints, including computers, servers, routers and virtual machines, can communicate despite differences in their underlying infrastructures, designs or standards.

To successfully send and receive information, devices on both sides of a communication exchange must accept and follow protocol conventions. In networking, support for protocols can be built into the software, hardware or both.

Without network protocols, computers and other devices would not know how to engage with each other. As a result, except for specialty networks built around a specific architecture, few networks would be able to function, and the internet as we know it wouldn't exist.

To understand how network protocols function, it's crucial to understand the workings of the seven layers of the OSI model:

Physical layer. The physical layer is the initial layer that physically connects two interoperable systems. It controls simplex or duplex modem transmissions and transfers data in bits. Additionally, it oversees the hardware that connects the network interface card (NIC) to the network, including the wiring, cable terminators, topography and voltage levels.
Data-link layer. The data-link layer is responsible for the error-free delivery of data from one node to another over the physical layer. It's also the firmware layer of the NIC. It puts datagrams together into frames and gives each frame the start and stop flags. Additionally, it fixes issues brought on by broken, misplaced or duplicate frames.
Network layer. The network layer is concerned with information flow regulation, switching and routing between workstations. Additionally, it divides up datagrams from the transport layer into error-free and smaller datagrams.
Transport layer. The transport layer transfers services from the network layer to the application layer and breaks down data into data frames for error checking at the network segment level. This also ensures that a fast host on a network doesn't overtake a slower one. Essentially, the transport layer ensures that the entire message is delivered from beginning to end. It also confirms a successful data transmission and retransmitting of the data if an error is discovered.
Session layer. The session layer establishes a connection between two workstations that need to communicate. In addition to ensuring security, this layer oversees connection establishment, session maintenance and authentication.
Presentation layer. The presentation layer is also known as the translation layer because it retrieves the data from the application layer and formats it for transmission over the network. It addresses the proper representation of data, including the syntax and semantics of information. The presentation layer is also in charge of managing file-level security and transforming data to network standards.
Application layer. The application layer, which is the top layer of the network, oversees relaying user application requests to lower levels. File transfer, email, remote login, data entry and other common applications take place at this layer.

IP ADDRESS
Every machine on a network has a unique identifier. Just as you would address a letter to send in the mail, computers use the unique identifier to send data to specific computers on a network. Most networks today, including all computers on the internet, use the TCP/IP protocol as the standard for how to communicate on the network. In the TCP/IP protocol, the unique identifier for a computer is called its IP address.

An IP address can be either dynamic or static. A static address is a permanently assigned address. Static IP addresses assigned by internet service providers are rare. You can assign static IPs to devices on your local network, but it can create network issues if you use it without a good understanding of TCP/IP. Dynamic addresses are the most common. They're assigned by the Dynamic Host Configuration Protocol (DHCP), a service running on the network. DHCP typically runs on network hardware such as routers or dedicated DHCP servers.

TCP/IP
TCP/IP stands for Transmission Control Protocol/Internet Protocol. TCP/IP is a set of standardized rules that allow computers to communicate on a network such as the internet.

IP is the part that obtains the address to which data is sent. TCP is responsible for data delivery once that IP address has been found.

It's possible to separate them, but there isn’t really a point in making a difference between TCP and IP. Because they're so often used together, “TCP/IP” and the “TCP/IP model” are now recognized terminology.
