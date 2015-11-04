class initialization
initialize
	ReEngine uniqueInstance announcer unsubscribe: self uniqueInstance.
	ReEngine uniqueInstance announcer weak when: ReCriticEvent send: #recordAnnouncement: to: self uniqueInstance