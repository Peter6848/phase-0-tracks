# WEB SERVERS QUESTIONS

1. What are some of the key design philosophies of the Linux operating system?
  * Linux's philosophies are to allow the user complete control of the operating system.  Linux assumes the user is computer literate and executes any command given regardless if it's harmful or accidental.  

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
  * A VPS is pretty much an online computer that gets and sends data when a HTTP request is sent from a user/client.  A VPS is advantages for many reasons.  A few are keeping from harming your own personal computer/server, cheaper then a full dedicated physical server, more scalable and customizable.  

3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
  * Root is dangerous for multiple reasons.  
    * You can use rm -rf* on the wrong file and delete everything.
    * You can acquire a bug that messes with the whole system rather than just what a normal user has access to.
    * Malicious software can destroy/change/take over your entire system rather than what a normal user would have access to.