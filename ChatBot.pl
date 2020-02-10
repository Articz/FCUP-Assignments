%************* Regras *************
rule([hello,hi,hey],
    [ans([hello,how,can,i,help,you,?],0.9),
    ans([hi,im,great, now, that, you, are, here,'!', how, can, i, help, you,?],0.8)
    ]).

rule([problem,issue],
    [ans([please,describe,your,issue,.],0.9),
    ans([have,you,tried,rebooting,the,system,?],0.7),
    ans([that, seems, to, be, a , really, specific, matter, let, me, redirect, you, to, live, support,.] ,0.8),
    ans(['I', think, 'I', understood, your, problem, ',', try, this, tutorial, and, see, if, it, fixes, your, problem,:],0.1)
    ]).

rule([audio,sound],
    [ans([check, if, all, the, cables, are, connected,.],0.6),
    ans([if, all, the, cables, are, connected, try, to, turn, it, off, and, then, on],0.7),
    ans([check, the, volume, mixer, settings,., right, click, the, volume, icon, and, open, volume, mixer,., make, sure, all, the, entries, are, not, in, the, minimum, level,.],0.8),
    ans([if, the, audio, driver, is, corrupted, or, incompatible, you, can, try, reinstalling, the, audio, driver, to, fix, it,.],0.5),
    ans([a, missing, or, outdated, audio, driver, can, cause, no, sound, on, the, computer, you, can, try, to, update, your, audio,.],0.5)
]).

rule([headphone, headphones, phones],
    [ans([check, your, headphone, jack, and, see, if, there, is, any, obstacle, that, may, stop, the, headphone, from, working, properly,.],0.7),
    ans([if, there, is, an, obstacle, in, your, headphones, jack, clean, it, with, a, cotton, swab, or, soft, brush,.],0.8),
    ans([make, sure, your, audio, device, is, set, as, default,.],0.7)
    ]).

rule([wifi, wireless, 'wi-fi', 'WiFi'],
    [ans([this, could, indicate, an, 'ISP', issue,., restart, your, modem, and, wirelless, router, to, help, you, reconnect, to, your, 'WiFi', problem, .], 0.7),
    ans([check, it, the, 'WiFi', signal, is, blocked,., if, so, move, your, device, closer, to, the, router, or, consider, buying, a, 'WiFi', range, extender,.], 0.8),
    ans([change, your, 'WiFi', frequency, and, channel, to, fix, 'WiFi', not, working,.], 0.5),
    ans([if, 'WiFi', is, working, on, other, devices, but, not, on, your, laptop,:, enable, 'WiFi', service, to, fix, your, problem,.], 0.6),
    ans([if, 'WiFi', is, working, on, other, devices, but, not, on, your, laptop,:, turn, on, 'WLAN', 'AutoConfig', service, to, fix, your, problem], 0.6),
    ans([if, 'WiFi', is, working, on, other, devices, but, not, on, your, laptop,:,disable, the, firewall, and, check, if, it, solves, your, problem,., if, so, you, can, allow, your, 'WiFi', through, firewall,.],0.6),
    ans([if, 'WiFi', is, working, on, other, devices, but, not, on, your, laptop,:,update, your, 'WiFi', network, driver,.], 0.6),
    ans([forget, 'WiFi', network, and, connect, again,., or, you, can, reset, your, 'Wifi', network, settings,.],0.7)
    ]).

rule([keyboard],
    [ans([update, or, rollback, laptop, keyboard, drivers,.], 0.6),
    ans([try, to, clean, your, keyboard,.], 0.7),
    ans([if, a, keyboard, key, does, not, work,',', it, could, be, due, to, your, language, settings,.], 0.5)
]).

rule([battery, charging],
    [ans([in, most, situations, it, is, a, bad, battery, and, should, be, replaced,.],0.8),
    ans([the, battery, can, become, loose, therefore, try, to, remove, and, reconnect, battery], 0.7)
    ]).

rule([mouse, touchpad],
    [ans([try, to, reconnect, your, devices,.],0.7),
    ans([check, your, device, settings,.], 0.8),
    ans([check, device, manager, and, update, drivers,.], 0.9),
    ans([your, device, may, be, defective,., you, may, need, to, replace, it,.],0.6)
]).

rule([bluetooth, pairing],
    [ans([make, sure, your, bluetooth, devices, are, compatible, with, each, other,.],0.9),
    ans([try, to, place, the, devices, closer, to, each, other, .], 0.7),
    ans([turn, the, devices, off, and, back, on, again, .], 0.8),
    ans([make, sure, that, your, 'Bluetooth', devices, are, switched, on, and, either, fully, charged, or, connected, to, power,.], 0.6)
    ]).

rule([display, monitor],
    [ans([make, sure, the, monitor, is, properly, connected, to, the, computer,.], 0.7),
    ans([if, the, monitor, has, a, detachable, video, cable, obtain, a, second, monitor, cable, for, testing, purposes, in, case, the, cable, is, bad,.], 0.8),
    ans([reset, and, update, the, 'BIOS'], 0.6)
]).

rule([image, distorted, skewed],
    [ans([the, cable, may, be, loose, or, defective,.],0.8),
    ans([a, distorted, image, can, be, caused, by, magnetic, or, other, types, of, interference,., verify, if, those, kind,of, devices, are, too, close, to, the, monitor,.], 0.9)
    ]).

rule([slow],
  [ans([if, your, computer, has, not, been, rebooted, recently,',', make, sure, to, reboot, it,.],0.9),
  ans([delete, temp, files,.], 0.8),
  ans([free, hard, drive, space,.], 0.7),
  ans([scan, for, viruses, or, malware,.], 0.6),
  ans([do, a, memory, upgrade,.],0.5)
  ]).

rule([log],
  [ans([make, sure, you, do, not, have, caps, lock, on,.],0.9),
  ans([your, password, may, have, expired,.],0.8),
  ans([your, account, may, be, have, been, locked, due, to, too, many, unssuccessful, login, attempts,...],0.7)
  ]).

rule([heat, overheat, overheating],
  [ans([your, computer, lacks, a, sufficient, cooling, system,.], 0.9),
  ans([turn, your, computer, off, and, let, it, rest, if, its, getting, hot], 0.6),
  ans([check, the, fan, to, make, sure, its, working, properly], 0.8)
  ]).

rule([usb, 'USB', port],
  [ans([try, to, use, another, usb, port, to, connect, the, device,.],0.9),
  ans([see, if, your, usb, device, works, on, someone, elses, computer,.],0.8),
  ans([see, if, your,other, usb, devices, are, recognized, by, the, computer,.],0.7)
  ]).

rule([shut, shuts, close, stop, stops, off],
  [ans([it, probably, is, an, heat, related, issue], 0.9),
  ans([if, you, recently, added, any, new, hardware, remove, it, from, your, pc, to, make, sure, it, is, not, the, cause, of, the, problem], 0.8),
  ans([if, your, computer, seems, to, be, turning, off, when, executing, a, certain, program, at, specific, times, of, the, day,it, could, be, infected, with, a, virus, or, other, malware],0.7)
  ]).

rule([thank, thanks],
    [ans([you, are, welcome,.], 0.9),
    ans([you, are, very, polite,.,'I', like, you,.],0.7)
    ]).

rule([bye, goodbye],
    [ans([quit],1)]).







            % ************* Inicialização do bot *************

chat:-
	write('Welcome to tech support, how may I help you?'),nl,flush_output,
    chatRoutine.

	


	





     % ********************** Funções do chat  ************************************** %


checkBye([quit]).


%**********
chatRoutine :-
    write(">>> "),flush_output,
    readln(R),nl,
    bestanswer(R,Out),
    atomics_to_string(Out," ",L1),
    not(checkBye(Out)),
    write('TechSupport: '),
    write(L1),nl,flush_output,chatRoutine;
    write("TechSupport: Could you please rephrase that? if you meant to quit please just type bye or goodbye."),flush_output,nl,
    write(">>> "),flush_output,
    readln(R),nl,
    bestanswer(R,Out),
    checkBye(Out) -> quit;   
    write("TechSupport: Lets try again from the start."),nl,flush_output,
    write("TechSupport: How can i help you?"),nl,flush_output,chatRoutine.
  
 
%**********
quit :-
  write('TechSupport: Do you really wish to leave? yes or no?'),flush_output,nl,
  write(">>> "),flush_output,
  readln(S),
  S == [yes] -> abort;
  write("TechSupport: Please continue then"),flush_output,nl,
  chatRoutine.




                     % ************* Funções ************* %



%Dado um input answers([lista,de,palavras], R) retorna um R = [[ans([resposta1],X),ans([resposta2],X),...])] *****
answers(List,Answers) :-
     findall(S,auxAnswers(List,S),Answers).



     

%Dado um input runifanswer([isto,é,um,exemplo],R) , retorna uma resposta aleatoria dentro das possiveis associadas a uma keyword *****
runifanswer(List,Answers) :-
     rule(ContainsKey,X),
     member(Key,ContainsKey),
     member(Key, List),
     findall(X,rule(ContainsKey,X),[Ans]),
 	 myrandom(Ans,Answers).

      
      

 %Dado um input  bestanswer([isto,é,um,exemplo],R) , retorna a resposta com maior classificação possivel , no caso de empate ou mais do que uma keyword, é possivel obter varias respostas *****
 bestanswer(List,Answers) :-
	 findall(S,auxBest(List,S),L1),
	 listMax(-1,L2,L1),
	 rule(ContainsKey,X),
     member(Key,ContainsKey),
     member(Key, List),
     findall(X,rule(ContainsKey,X),Ans),
 	 lists(Ans,L),
     on(ans(Answers,L2),L).
    
       
 %Dado um input rpropanswer([isto,é,um,exemplo],R), retorna uma resposta aleatoria com probabilidade alterada dentro das possiveis ********
  rpropanswer(List,Answers) :-
     rule(ContainsKey,X),
     member(Key,ContainsKey),
     member(Key, List),
     findall(X,rule(ContainsKey,X),Ans),
 	 probability(R),
 	 lists(Ans,L),
     on(ans(Answers,R),L) ->  on(ans(Answers,R),L); rpropanswer(List,Answers).
 

 %stats/1



                % *********** Funções auxiliares **************** %

%Função auxiliar para bestanswer
auxBest(List,Answers):-
	 rule(ContainsKey,X),
     member(Key,ContainsKey),
     member(Key, List),
     findall(X,rule(ContainsKey,X),Ans),
     lists(Ans,L),
     findall(Y,member(ans(_,Y),L),Score),
     member(Answers,Score).

%Função auxiliar para answers
auxAnswers(List,Answers):-
     rule(ContainsKey,X),
     member(Key,ContainsKey),
     member(Key, List),
     findall(X,rule(ContainsKey,X),[Answers]).

%Função para encontrar o máximo de uma lista.    
listMax(X,Ans,[E]):-maxi(X,E,Ans).
listMax(X,Ans,[H|T]):-
    maxi(X,H,Temp),
    listMax(Temp,Ans,T).


%Função para ver o máximo entre 2 numeros.
maxi(A,B,Max):-
    A>B,!,
    Max= A.
    maxi(_A,B,B).

%Funcao para retornar um score com uma probabilidade alterada (+ score , + provavel).
probability(Return):-
X = [0.1,0.2,0.2,0.3,0.3,0.3,0.4,0.4,0.4,0.4,0.5,0.5,0.5,0.5,0.5,0.6,0.6,0.6,0.6,0.6,0.6,0.7,0.7,0.7,0.7,0.7,0.7,0.7,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,1,1,1,1,1,1,1,1,1,1],
random(1,55,T),
nth0(T,X,Return).

%Funçao para gerar um item aleatorio dentro de uma lista. 
myrandom(List,Return):-
    length(List,Int),
    random(0,Int,RandomI),
    nth0(RandomI,List,Return).



%Ve se um item esta numa lista 
on(Item,[Item|_Rest]). 
on(Item,[_DisregardHead|Tail]):-
          on(Item,Tail).

%Retira uma lista, de uma lista de listas.
lists([], []).
lists([[Head|_]|Lists], [Head|L]):-
  lists(Lists, L).
lists([[_,Head|Tail]|Lists], L):-
  lists([[Head|Tail]|Lists], L).


    %************************ Part 2 **********************************
   

                  %************ DCG ************

atoms --> [].
atoms --> [_],atoms.  

           %************ greetings *****************

greetings --> atoms,greetingKeyword,atoms.
greetingKeyword --> [hello]; [hi]; [hey];[wassup];[yo].
greetu1 --> greet.
greet --> greet1,greet2.
greet -->  greet1,greet2,[,],greet3,greet4,greet5.
greet -->  greet1,greet2,[,],greet3,greet7,greet6,greet5.
greet1--> [hello];[hi];[hey];[wassup];[yo].
greet2 --> [dude];[bro];[fam];[man].
greet3 --> [havent].
greet4 --> [seen].
greet7-->[spoke].
greet5 -->[you,in,ages].
greet6 --> [to].

greetu2 --> greets.
greets --> greet1,greet2,greets1.
greets1 --> [it,has,been,a,long,time].




            %******************** how are *****************
howare --> atoms,howareyou,atoms.
howareyou --> [how,are];[how,have],[have,you,been].
howisu1 --> howis.
howis --> howis1,howis2,cqkcomp.
howis --> howis1,howis5,howis3,cqkcomp.
howis --> howis1,howis4,howis3,[been],cqkcomp.
howis1 --> [how].
howis2 --> [is,everything].
howis3 --> [you].
howis4 --> [have].
howis5 --> [are].

howisu2 --> howisa.
howisa -->  howisa6,howisa5,howisa7,tenkcomp2,tenkcomp3.
howisa --> howisa3,howisa4.
howisa --> howisa6,howisa1,howisa2.
howisa6 --> [i].
howisa1 --> [have,been].
howisa2 --> [pretty,good];[really,tired].
howisa3 --> [things,are].
howisa4 --> [running,smooth];[running,rough].
howisa5 --> [barely,have];[have,a,lot,of].
howisa7 --> [time].

             %********************** weather ******************

weather --> atoms,weatherKey,atoms.
weatherKey --> [weather];[rain];[raining];[heat];[sunny];[sun];[hot];[cold];[windy];[degrees].
tenkiU1 -->  tenk.
tenk --> tenk1(case1),tenk2(case1),tenkcomp,tenk2(case2),tenkcomp2,tenkcomp3.
tenk -->  tenk1(case2),tenkcomp,tenkcomp4,tenk2(case3),tenkcomp2,tenkcomp3.
tenk --> tenkcomp5,tenk1(case1),tenkcomp6.
tenk1(case1)--> [the].
tenk1(case2)--> [it].
tenk2(case1)--> [weather];[cold];[heat].
tenk2(case2) --> [affecting].
tenk2(case3) --> [cold];[hot].
tenkcomp --> [has, been].
tenkcomp1 --> [me].
tenkcomp2 --> [lately].
tenkcomp3 --> [!].
tenkcomp4 --> [so].
tenkcomp5 --> [i,miss].
tenkcomp6 --> [sun];[rain].

tenkiU2 -->  tenku.
tenku --> tenkucomp,tenkucomp1,tenkucomp2,tenkucomp3,tenkucomp4.
tenku --> tenkucomp5,tenkucomp8,tenkucomp6,tenkucomp7,tenkucomp9.
tenkucomp --> [well].
tenkucomp1 --> [i].
tenkucomp2 --> [prefer].
tenkucomp3 --> [rainy];[sunny];[windy].
tenkucomp4 --> [days].
tenkucomp5 --> [they,say].
tenkucomp6 --> [raining];[sunny].
tenkucomp7 --> [on].
tenkucomp8 --> [its];[it,will,be].
tenkucomp9 --> [monday];[tuesday];[wednsday];[thursday];[friday];[saturday];[sunday].



%************************* college ****************

college --> atoms,collegeKey,atoms.
collegeKey --> [university];[studys];[assignments];[grades];[tests].
collegeQ --> atoms, [grades] , atoms, ['?'].
collegeQ --> atoms, [school] , atoms, ['?'].
collegeQ --> atoms, [college] , atoms, ['?'].
collegeQK --> cqk.
cqk --> cqk1(case1),cqkcomp1,cqkcomp4,cqkcomp3,cqkcomp2,cqkcomp.
cqk --> cqk1(case2),cqkcomp2,cqk2(case2),cqkcomp1,cqkcomp.
cqk --> cqkcomp6,cqkcomp1,cqkcomp4,cqkcomp7,cqkcomp3,cqkcomp2.
cqk --> cqk1(case2),cqkcomp2,cqk2(case2),cqk2(case1),cqkcomp5,cqk2(case3),cqkcomp1,cqkcomp.
cqk1(case1)--> [hows].
cqk1(case2)--> [are].
cqk2(case1)--> [things];[life].
cqk2(case2) --> [enjoying].
cqk2(case3)-->[your].
cqkcomp1-->[school];[college];[university].
cqkcomp2 -->[you].
cqkcomp3 --> [for].
cqkcomp4 --> [going].
cqkcomp5 --> [in].
cqkcomp6 --> [is].
cqkcomp7 --> [well].
cqkcomp --> [?].

collegeAK --> cak.
cak --> cak1(case1),cakcomp6,cakcomp7,cakcomp8,cakcomp9.
cak --> cak2(case2),cakcomp6,cak2(case1).
cak --> cak1(case2),cakcomp10,cakcomp7,cakcomp1.
cak1(case1)--> [there].
cak1(case2)--> [i,have,been].
cak2(case1)--> [falling,apart];[going,great].
cak2(case2) --> [everything].
cak2(case3)-->[your].
cakcomp1-->[assignments];[projects];[tests].
cakcomp2 -->[you].
cakcomp3 --> [for].
cakcomp5 --> [in].
cakcomp6 --> [is].
cakcomp7 --> [a,lot,of].
cakcomp8 --> [work].
cakcomp9 --> [lately].
cakcomp10 --> [busy,with].

%******************** info *****************

info --> atoms, infoKey, atoms.
infoKey -->[name];[age];[old];[birth];[address];[personal];[need,to,know,that].
infoU1 --> askInfo.
askInfo --> askinfo11, askinfo21, askinfo31, interr.
askInfo --> askinfo12, askinfo22, askinfo32,interr.
askinfo11 -->[what, is].
askinfo12--> [where, are].
askinfo21 --> [your].
askinfo22 --> [you].
askinfo31 --> [name];[address];[age].
askinfo32 -->[from].
interr --> [?].

infoU2 -->ansInfo.
ansInfo --> ansInfo1, ansInfo2,ansInfo3, interr.
ansInfo --> ansInfo11, ansInfo2, ansInfo33.
ansInfo --> ansInfo111, ansInfo4.
ansInfo1 -->[why, do].
ansInfo11 -->[first].
ansInfo111 --> [that, is].
ansInfo2 -->[you].
ansInfo3 -->[need, to, know, that].
ansInfo33 -->[tell, me, !].
ansInfo4 --> [personal].

 %********************** books ******************
books --> atoms, booksKey, atoms.
booksKey --> [book];[books];[reading]; [genre]; [author];[writer];[novels].
bookU1 --> askBook.
askBook --> askBook1, askBook2, askBook3, interr.
askBook --> askBook1, askBook2, askBook4,askBook5, interr.
askBook --> askBook1, askBook22, askBook33, interr.
askBook1 --> [do, you].
askBook2 --> [like];[enjoy].
askBook22 --> [have, a, favourite].
askBook3 --> [reading];[to, read].
askBook33 --> [book];[author];[writer].
askBook4 --> [sci,fi];[fantasy];[western];[romance];[thriller];[mystery];[dystopian].
askBook5 --> [books];[novels].

bookU2 --> ansBook.
ansBook --> ansBook1, askBook4,askBook5.
ansBook --> ansBook11, askBook4, askBook5.
ansBook --> ansBook111, ansBook2, ansBook3, askBook4.
ansBook --> ansBook111, ansBook22, ansBook3, ansBook4.
ansBook --> ansBook1, ansBook4.
ansBook1 -->[give, me, everything, to, read, but].
ansBook11 -->[i, love].
ansBook111 --> [my, favourite].
ansBook2 --> [genre].
ansBook22 --> [author];[writer].
ansBook3 -->[is].
ansBook4 -->[hemingway];[shakespeare];[stephen, king]; [orwell]; [tolstoi];[kafka]; [dostoevsky].

 %********************** hobbie ******************
hobbie --> atoms,hobbieKey,atoms.
hobbieKey --> [hobbie];[time];[spare];[i, watch, a, lot, of];[i, do, lot, of, stuff, but, not].
hobbieU1 --> askHobbie.
askHobbie --> askHobbie1, askHobbie2, askHobbie33, askHobbie4, askHobbie5,interr.
askHobbie --> askHobbie11, askHobbie2, askHobbie3, askHobbie4, askHobbie44, askHobbie5, interr.
askHobbie --> askHobbie2, askHobbie111, interr.
askHobbie1 --> [how].
askHobbie11 --> [what].
askHobbie111 --> [have, a, favourite, hobbie].
askHobbie2 --> [do, you].
askHobbie3 --> [like, to, do, in].
askHobbie33 --> [spend].
askHobbie4 --> [your].
askHobbie44 -->[spare].
askHobbie5 --> [time].

hobbieU2 --> ansHobbie.
ansHobbie --> ansHobbie1, ansHobbie2.
ansHobbie -->ansHobbie11, ansHobbie22.
ansHobbie1 --> [i, watch, a, lot, of].
ansHobbie11 --> [i, do, lot, of, stuff, but, not].
ansHobbie2 --> [movies];[films];[documentaries].
ansHobbie22 --> [running]:[writing];[cleaning];[swimming].


 %******************* gaming ******************

 gaming --> atoms,gameKey,atoms.
 gameKey --> [game];[console];[controller];[gaming];[play].
 gameu1 -->  gameon.
 gameon -->  gameon1,gameon3,gameon2,interr.
 gameon --> gameon1,gameon4,gameon5,interr.
 gameon1 --> [do,you].
 gameon3 --> [like];[enjoy].
 gameon4 --> [have,a,favourite].
 gameon2 --> [gaming].
 gameon5 --> [game].

 gameu2 --> ansgameon.
 ansgameon --> ansgameon1,ansgameon3,ansgameon2.
 ansgameon --> ansgameon4,ansgameon6,ansgameon5,ansgameon3.
 ansgameon1 --> [i,could,play].
 ansgameon2 --> [for,hours].
 ansgameon3 --> [destiny2];[minecraft];[call,of,duty];[counter,strike];[assassins,creed];[terraria].
 ansgameon4 --> [my,favourite].
 ansgameon5 --> [is].
 ansgameon6 --> [game]. 

%******************* food ******************
food --> atoms, foodKey, atoms.
foodKey --> [food];[spicy];[eat];[eating];[picky].
foodU1 --> askFood.
askFood --> askFood1, interr.
askFood --> askFood11, askFood2, askFood3, interr.
askFood1 --> [what, is, your, favourite, food].
askFood11 --> [do, you, eat].
askFood2 --> [italian];[portuguese];[indian];[chinese];[spicy].
askFood3 --> [meals]; [food].

foodU2 --> ansFood.
ansFood --> ansFood1, askFood2, askFood3.
ansFood --> ansFood2, askFood2, ansFood3.
ansFood1 --> [i, eat, a, lot, of].
ansFood2 --> [i, am, not, picky, but, my, favourite, is].
ansFood3 --> [food].

 %******************* aliens ******************
aliens --> atoms, aliensKey, atoms.
aliensKey --> [aliens];[universe].
aliensU1 --> askAliens.
askAliens --> askAliens1,askAliens2, interr.
askAliens --> askAliens1, askAliens22, interr.
askAliens --> askAliens11, askAliens2, interr.
askAliens --> askAliens11, askAliens22, interr.
askAliens1 --> [do, you, believe, in].
askAliens11 --> [what, do, you, think, about].
askAliens2 --> [aliens].
askAliens22 -->[life, outside, planet, earth].

 aliensU2 --> ansAliens.
 ansAliens --> ansAliens1.
 ansAliens --> ansAliens2.
 ansAliens --> ansAliens3.
 ansAliens1 -->[the, universe, is, infinite, so, yeah, !].
 ansAliens2 --> [aliens, are, already, among, us].
 ansAliens3 --> [aliens, exist, and, they, think, we, are, dumb].


 %************************* WELCOME TO THE TEST AREA 51 *********************



test :-
  findall(X1,sentence_type(X1,gaming),L),
  myrandom(L,R),
  write(R),
  answerRules(gaming,R2),
  findall(X2,sentence_type(X2,R2),L2),
  myrandom(L2,R3),write(R3).

  test2 :-
    findall(X,semtrans(weather,X,0.1),K), myrandom(K,L1),checkfarewell(L1),test2.

%**************************************************************************




                    %********* Functions *************

answerRules(Type,ReturnType):-
  Type == 'books' -> ReturnType = 'bookU2';
  Type == 'college' -> ReturnType = 'collegeAK';
  Type == 'weather' -> ReturnType = 'tenkiU2';
  Type == 'greetings' -> ReturnType = 'greetu2';
  Type == 'howare' -> ReturnType = 'howisu2';
  Type == 'info' -> ReturnType = 'infoU2';
  Type == 'gaming' -> ReturnType = 'gameu2';
  Type == 'hobbie' -> ReturnType = 'hobbieU2';
  Type == 'food' -> ReturnType = 'foodU2';
  Type == 'aliens' -> ReturnType = 'aliensU2'.

       %**************** Sentence Type *****************

 sentence_type(List,Type):-
    Type == 'aliens' -> phrase(aliensU1,List);
    Type == 'aliensU2' -> phrase(aliensU2,List);
    aliens(List,[]) -> Type = 'aliens'.

 sentence_type(List,Type):-
    Type == 'food' -> phrase(foodU1,List);
    Type == 'foodU2' -> phrase(foodU2,List);
    food(List,[]) -> Type = 'food'.

 sentence_type(List,Type):-
    Type == 'hobbie' -> phrase(hobbieU1,List);
    Type == 'hobbieU2' -> phrase(hobbieU2,List);
    hobbie(List,[]) -> Type = 'hobbie'.

  sentence_type(List,Type):-
    Type == 'college' -> phrase(collegeQK,List);
    Type == 'collegeAK' -> phrase(collegeAK,List);
    college(List,[]) -> Type = 'college'.

    sentence_type(List,Type):-
    Type == 'gaming' -> phrase(gameon,List);
    Type == 'gameu2' -> phrase(ansgameon,List);
    gaming(List,[]) -> Type = 'gaming'.

  sentence_type(List,Type):-
     Type == 'weather' -> phrase(tenkiU1,List);
     Type == 'tenkiU2' -> phrase(tenkiU2,List);
     weather(List,[]) -> Type = 'weather'.

  sentence_type(List,Type):-
     Type == 'greetings' -> phrase(greetu1,List);
     Type == 'greetu2' -> phrase(greetu2,List);
     greetings(List,[]) -> Type = 'greetings'.

 sentence_type(List,Type):-
     Type == 'howare' -> phrase(howisu1,List);
     Type == 'howisu2' -> phrase(howisu2,List);
     howare(List,[]) -> Type = 'howare';
     howisu1(List,[]) -> Type = 'howisu1'.

 sentence_type(List,Type):-
     Type == 'info' -> phrase(infoU1,List);
     Type == 'infoU2' -> phrase(infoU2,List);
     info(List,[]) -> Type = 'info'.


 sentence_type(List,Type):-
     Type == 'books' -> phrase(bookU1,List);
     Type == 'bookU2' -> phrase(bookU2,List);
     books(List,[]) -> Type = 'books'.


%****************** Topics ************************ 

%**** greetings,howare,gaming,books,hobbies,college,weather,aliens,food,info *********************


semtrans(greetings,howare,0.4).
semtrans(greetings,college,0.3).
semtrans(greetings,weather,0.3).
semtrans(greetings,info,0.1).
semtrans(greetings,books,0.2).
semtrans(greetings,gaming,0.2).
semtrans(greetings,hobbie,0.2).
semtrans(greetings,aliens,0.2).
semtrans(greetings,food,0.2).


semtrans(howare,college,0.4).
semtrans(howare,weather,0.3).
semtrans(howare,books,0.1).
semtrans(howare,info,0.2).
semtrans(howare,gaming,0.2).
semtrans(howare,hobbie,0.3).
semtrans(howare,aliens,0.2).
semtrans(howare,food,0.2).

semtrans(weather,howare,0.1).
semtrans(weather,college,0.4).
semtrans(weather,books,0.4).
semtrans(weather,gaming,0.3).
semtrans(weather,info,0.3).
semtrans(weather,hobbie,0.2).
semtrans(weather,aliens,0.4).
semtrans(weather,food,0.4).
semtrans(weather,farewell,0.1).

semtrans(books,howare,0.1).
semtrans(books,college,0.4).
semtrans(books,weather,0.2).
semtrans(books,info,0.3).
semtrans(books,gaming,0.3).
semtrans(books,hobbie,0.4).
semtrans(books,aliens,0.4).
semtrans(books,food,0.4).
semtrans(books,farewell,0.1).

semtrans(college,howare,0.1).
semtrans(college,books,0.2).
semtrans(college,weather,0.1).
semtrans(college,info,0.3).
semtrans(college,gaming,0.4).
semtrans(college,hobbie,0.2).
semtrans(college,aliens,0.3).
semtrans(college,food,0.4).
semtrans(college,farewell,0.1).

semtrans(info,howare,0.1).
semtrans(info,college,0.2).
semtrans(info,weather,0.4).
semtrans(info,books,0.3).
semtrans(info,gaming,0.3).
semtrans(info,hobbie,0.2).
semtrans(info,aliens,0.4).
semtrans(info,food,0.3).
semtrans(info,farewell,0.1).

semtrans(gaming,howare,0.1).
semtrans(gaming,college,0.2).
semtrans(gaming,weather,0.2).
semtrans(gaming,books,0.4).
semtrans(gaming,info,0.3).
semtrans(gaming,hobbie,0.4).
semtrans(gaming,aliens,0.3).
semtrans(gaming,food,0.3).
semtrans(gaming,farewell,0.1).

semtrans(hobbie,howare,0.1).
semtrans(hobbie,college,0.2).
semtrans(hobbie,weather,0.3).
semtrans(hobbie,books,0.4).
semtrans(hobbie,info,0.3).
semtrans(hobbie,gaming,0.4).
semtrans(hobbie,aliens,0.2).
semtrans(hobbie,food,0.2).
semtrans(hobbie,farewell,0.1).

semtrans(food,college,0.2).
semtrans(food,weather,0.3).
semtrans(food,books,0.4).
semtrans(food,info,0.3).
semtrans(food,gaming,0.4).
semtrans(food,hobbie,0.4).
semtrans(food,aliens,0.2).
semtrans(food,howare,0.1).
semtrans(food,farewell,0.1).

semtrans(aliens,college,0.2).
semtrans(aliens,weather,0.3).
semtrans(aliens,books,0.3).
semtrans(aliens,info,0.4).
semtrans(aliens,gaming,0.3).
semtrans(aliens,hobbie,0.3).
semtrans(aliens,howare,0.1).
semtrans(aliens,food,0.4).
semtrans(aliens,farewell,0.1).










  

%********** CHATBOT 2.0  ********************

chataway(S):-
  write("******************** WELCOME TO CHATBOT 2.0 **************************"),nl,
  write("                                                                     *"),nl,
  write("Initializing conversation ....... 100%                               *"),nl,
  write("                                                                     *"),nl,
  write("Generating randomness ....... 100%                                   *"),nl,
  write("                                                                     *"),nl,
  write("Learning how to human ....... 100%??                                 *"),nl,
  write("                                                                     *"),nl,
  write("************************** CHATING ***********************************"),nl,nl,
  findall(X,sentence_type(X,greetings),L),
  myrandom(L,RL),
  atomics_to_string(RL," ",Out),
  write(Out),nl,
  findall(X1,sentence_type(X1,greetu2),L1),
  myrandom(L1,RL2),
  atomics_to_string(RL2," ",Out2),
  write(Out2),nl,
  Size is S - 1,
  chatawayaux(Size,'greetings').


%******* Auxiliar de chat ********

chatawayaux(Size,Type):-

  Size == 1 -> nl,write("I have to go now"),flush_output,nl,write("Farewell then"),nl,nl,flush_output,write("******************** END OF CHAT **************************"),flush_output,abort;
  nl,
  probability2(Y),
  findall(X,semtrans(Type,X,Y),K),
  myrandom(K,Return),
  checkfarewell(Return),
  findall(X1,sentence_type(X1,Return),L),
  myrandom(L,L1),
  atomics_to_string(L1," ",Out),
  write(Out),nl,
  answerRules(Return,AType),
  findall(X2,sentence_type(X2,AType),L3),
  myrandom(L3,L2),
  atomics_to_string(L2," ",Out2),
  write(Out2),nl,
  S2 is Size - 1,
  chatawayaux(S2,Return).

  
  checkfarewell(Arg):-
    Arg == 'farewell' -> write("I have to go now, sorry"),flush_output,nl,write("Oh... ok, farewell then"),nl,nl,flush_output,write("******************** END OF CHAT **************************"),flush_output,abort;true.

%********** Funções auxiliares *************

%funcao de probabilidade para comparar a do topico 
probability2(Return):-
  X = [0.1,0.2,0.2,0.3,0.3,0.3,0.4,0.4,0.4,0.4],
  random(1,10,T),
  nth0(T,X,Return).
