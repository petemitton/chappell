\version "2.24"
\language "english"

global = {
  \time 4/4
  \key g \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 4 b,4 | <b, e> e <b, ds fs> fs | <b, e g> g8( a) b4 b, | <b, e> e <d fs> fs | \mBreak
            <b, d g>4 g8 a b4 g8( a) | <d g b>4 b <d a d'> e' | <d g b> b d'4. 8 | e'4 b b g | \mBreak
            a8( b) a( fs) d2 | e <d b> | <fs a>4 fs a d | e2 <b, e b> | \partial 2. <c e a>4 fs8( g) e4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*11 | s4 \stemUp <b, ds> s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        On | Houns -- low heath as | I rode o’er, I | spied a law -- yer |
        ri -- ding be -- for; Kind | sir, said I, ar’nt | you a -- fraid Of | Tur -- pin, that "mis - " |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d4\rest | g4 s2. | s1 | g4 d\rest a d\rest |
            \stemNeutral g,4 d\rest d2\rest | g4 d\rest fs d\rest | g d\rest d2\rest | <e g b>2 d\rest |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | e d\rest b, d\rest | e, d\rest d2\rest | e4 s d s |
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score