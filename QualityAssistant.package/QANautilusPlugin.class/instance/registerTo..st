registration
registerTo: aModel

	aModel announcer
		when: NautilusPackageSelected  send: #otherSelected:  to: self;
 		when: NautilusClassSelected    send: #classSelected:  to: self; 
		when: NautilusProtocolSelected send: #otherSelected:  to: self; 	 
		when: NautilusMethodSelected   send: #methodSelected: to: self.
		
	ReEngine uniqueInstance announcer
		when: ReCriticBanned
		send: #criticBanned:
		to: self
	