DBTune AudioScrobbler RDF Service
=================================

About
-----

This directory provides a Last.fm API to RDF converter. 
It includes modules (the file names are taken from the 2.x versions)
* to convert specific requests (currently):
	* lastfm_friends.pl
    	* lastfm_events.pl
	* lastfm_scrobbles.pl
* general modules 
	* to run the server
		* lastfm_run.pl
		* lastfm_server.pl
	* to configure the converter
		* lastfm_config.pl
		* lastfm_namespaces.pl 
	* generic helper modules
		* lastfm_utils.pl
		* lastfm_api_query.pl
		* log.pl

Please set up a Last.fm API key and secret in lastfm_config.pl.
Please set the correct SWI-Prolog path in lastfm_run.pl.	

The converter makes heavy use of:
* The Music Ontology 		(<http://musicontology.com/>)
* Friend-of-a-Friend Ontology 	(<http://xmlns.com/foaf/0.1/>)
* Events Ontology 		(<http://purl.org/NET/c4dm/event.owl#>)

* authors:
	* Yves Raimond
	* Bo Ferri
* copyright: Yves Raimond, Bo Ferri; 2006 - 2010

PS
--

The [old project repository location at SourceForge](http://motools.svn.sourceforge.net/viewvc/motools/lastfm/) is now deprecated. All new developments will be pushed to this repository location here at GitHub.
