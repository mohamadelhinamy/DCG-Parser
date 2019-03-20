det(d(the)) --> [the].
det(d(a)) --> [a].
det(d(an)) --> [an].
det(d(this)) --> [this].
det(d(that)) --> [that].
det(d(these)) --> [these].
det(d(those)) --> [those].
det(d(my)) --> [my].
det(d(many)) --> [many].
det(d(some)) --> [some].
det(d(every)) --> [every].



noun(n(woman)) --> [woman].
noun(n(man)) --> [man].
noun(n(boy)) --> [boy].
noun(n(box)) --> [box].
noun(n(room)) --> [room].
noun(n(school)) --> [school].
noun(n(shirt)) --> [shirt].
noun(n(envelope)) --> [envelope].
noun(n(shed)) --> [shed].
noun(n(building)) --> [building].
noun(n(lady)) --> [lady].
noun(n(tree)) --> [tree].
noun(n(students)) --> [students].
noun(n(professors)) --> [professors].
noun(n(lecturers)) --> [lecturers].
noun(n(scientists)) --> [scientists].
noun(n(researchers)) --> [researchers].
noun(n(sky)) --> [sky].
noun(n(dog)) --> [dog].
noun(n(girl)) --> [girl].


pronoun(p(who)) --> [who].

conj(c(and)) --> [and].
conj(c(while)) --> [while].


verb(v(worked)) --> [worked].
verb(v(pushed)) --> [pushed].
verb(v(stored)) --> [stored].
verb(v(gave)) --> [gave].
verb(v(climbed)) --> [climbed].
verb(v(watched)) --> [watched].
verb(v(admired)) --> [admired].
verb(v(appreciated)) --> [appreciated].
verb(v(ran)) --> [ran].
verb(v(read)) --> [read].
verb(v(drank)) --> [drank].
verb(v(ate)) --> [ate].
verb(v(played)) --> [played].
verb(v(swam)) --> [swam].
verb(v(slept)) --> [slept].
verb(v(liked)) --> [liked].
verb(v(loved)) --> [loved].
verb(v(dreamt)) --> [dreamt].
verb(v(told)) --> [told].
verb(v(spoke)) --> [spoke].




adj(aj(young)) --> [young].
adj(aj(old)) --> [old].
adj(aj(big)) --> [big].
adj(aj(large)) --> [large].
adj(aj(empty)) --> [empty].
adj(aj(poor)) --> [poor].
adj(aj(white)) --> [white].
adj(aj(brilliant)) --> [brilliant].
adj(aj(talented)) --> [talented].
adj(aj(bright)) --> [bright].
adj(aj(only)) --> [only].
adj(aj(other)) --> [other].
adj(aj(late)) --> [late].
adj(aj(new)) --> [new].
adj(aj(small)) --> [small].
adj(aj(tiny)) --> [tiny].
adj(aj(possible)) --> [possible].
adj(aj(strong)) --> [strong].
adj(aj(weak)) --> [weak].
adj(aj(full)) --> [full].



adv(av(quickly)) --> [quickly].
adv(av(secretly)) --> [secretly].
adv(av(strongly)) --> [strongly].
adv(av(weakly)) --> [weakly].
adv(av(obiously)) --> [obviously].
adv(av(violently)) --> [violently].
adv(av(firmly)) --> [firmly].
adv(av(beautifully)) --> [beautifully].
adv(av(lightly)) --> [lightly].
adv(av(truthfully)) --> [truthfully].

prep(pr(for)) --> [for].
prep(pr(in)) --> [in].
prep(pr(behind)) --> [behind].
prep(pr(on)) --> [on].
prep(pr(above)) --> [above].
prep(pr(about)) --> [about].
prep(pr(out)) --> [out].
prep(pr(off)) --> [off].
prep(pr(over)) --> [over].
prep(pr(under)) --> [under].
prep(pr(after)) --> [after].


nphrase(np(N)) --> noun(N).
nphrase(np(D,NP)) --> det(D),nphrase(NP).
nphrase(np(AJ,NP)) --> adj(AJ),nphrase(NP).
vphrase(vp(V,NP)) --> verb(V), nphrase(NP).
vphrase(vp(V)) --> verb(V).
vphrase(vp(V,C,VP)) --> verb(V),conj(C),vphrase(VP).


small_sent(ss(NP,VP)) --> nphrase(NP), vphrase(VP).
small_sent(ss(NP,C,SS)) --> nphrase(NP),conj(C),small_sent(SS).
small_sent(ss(NP,AV,VP)) --> nphrase(NP),adv(AV),vphrase(VP).
small_sent(ss(NP)) --> nphrase(NP).
small_sent(ss(NP,SS)) --> nphrase(NP),small_sent(SS).
small_sent(ss(VP,PR,SS)) --> vphrase(VP),prep(PR),small_sent(SS).
small_sent(ss(VP,SS)) --> vphrase(VP),small_sent(SS).
small_sent(ss(NP,PR,SS)) --> nphrase(NP),prep(PR), small_sent(SS).
small_sent(ss(NP,P,SS)) --> nphrase(NP), pronoun(P),small_sent(SS).


s(s(SS)) --> small_sent(SS).
s(s(SS,C,S)) --> small_sent(SS),conj(C),s(S).















