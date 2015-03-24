subscription
subscribe

	RPackageOrganizer default announcer weak
		on: RPackageCreated send: #packageAdded: to: self;
		on: RPackageRenamed send: #packageRenamed: to: self;
		on: RPackageUnregistered send: #packageRemoved: to: self.