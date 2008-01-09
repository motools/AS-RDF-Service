:- module(server, [server/0]).

:- use_module(library('http/thread_httpd')).
:- use_module(log).
:- use_module(lastfm).
:- use_module(library('semweb/rdf_db')).


server(Port, Options) :-
        http_server(reply,[ port(Port),timeout(20)| Options]).



reply(Request) :-
	member(path(Path),Request),
	atom_concat('/',UserRdf,Path),
	atom_concat(User,'.rdf',UserRdf),!,
	format('Content-type: application/rdf+xml~n~n', []),
	current_output(S),
	scroble_rdf(User,Triples),rdf_write_xml(S,Triples).

reply(Request) :-
	member(path(Path),Request),
	atom_concat('/',User,Path),!,
	host(H),
	format(atom(Redirect),'~w/~w.rdf',[H,User]),
	throw(http_reply(see_other(Redirect),[])).
	
	


server :- 
	server(2020,[]),nl,
	writeln(' - Server launched'),nl. 
        

