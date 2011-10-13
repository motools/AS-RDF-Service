DBTune AudioScrobbler RDF Service
=================================

About
-----

This directory provides a [Last.fm](http://last.fm) API to RDF converter. This is an extension of version 2.0 of this RDFizer. The DBTune AudioScrobbler RDF Service version 2.0 is aligned to the current [Last.fm API](http://last.fm/api) instead of the old [AudioScrobbler Web Service](http://audioscrobbler.net) that is utilised by version 1.0. Version 2.5 includes an alignment to further shared ontologies (see below for a listing of the new ontologies; see [here](http://smiy.wordpress.com/2011/07/17/semantic-federation-of-music-and-music-related-information-for-establishing-a-personal-music-knowledge-base/) for further details). 

It includes modules

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
* The Play Back Ontology	(<http://purl.org/ontology/pbo/core#>) **[NEW]**
* The Counter Ontology		(<http://purl.org/ontology/co/core#>) **[NEW]** 
* The Info Service Ontology	(<http://purl.org/ontology/is/core#>) **[NEW]**
* The Recommendation Ontology	(<http://purl.org/ontology/rec/core#>) **[NEW]**

Authors
-------

* Yves Raimond
* Bo Ferri

Copyright
---------

Yves Raimond, Bo Ferri; 2006 - 2010

PS
--

The [old project repository location at SourceForge](http://motools.svn.sourceforge.net/viewvc/motools/lastfm/) is now deprecated. All new developments will be pushed to this repository location here at GitHub.
