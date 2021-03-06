// Copyright (c) 2019-2020 Ulises Jeremias Cornejo Fandos. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

module util

// Observer is an interface to objects that need to observe something
pub interface Observer {
	update() // the data observed by this observer is being update
}

// Observable indicates that an object is observable; i.e. it has a list of interested observers
pub struct Observable {
pub mut:
	observers []Observer // list of interested parties
}

// add_observer adds an object to the list of interested observers
pub fn (o mut Observable) add_observer(obs Observer) {
	o.observers << obs
}

// notify_update notifies observers of updates
pub fn (o Observable) notify_update() {
	for obs in o.observers {
		obs.update()
	}
}
