function getServer() {
	switch (window.location.hostname) {
		case 'brdg.me':
			return 'api.brdg.me';
		default:
			return 'api.beta.brdg.me';
	}
}
