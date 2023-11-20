\version "2.24"

\new Staff {
  <<
    \new Voice = "one" \fixed c' { 
      \repeat volta 2 { a1 \alternative {\volta 1 {a1 }}
                        \alternative {\volta 2 {b1}}}
    } % end voice one

    \new Lyrics \lyricsto "one" {	% verse one
      verse one 
    }	% end lyrics verse one
    
    \new Lyrics \lyricsto "one" {	% verse two
      verse two
    }	% end lyrics verse two
  >>
} % end staff