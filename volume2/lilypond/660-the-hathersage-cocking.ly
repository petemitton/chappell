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
            \partial 4 e4 | <b, g b> b8. a16 <b, e g>4 4 | <a, e a> a8. g16  <b, ds fs>4  <b, fs> | <b e g> <b fs>8 g <g, e>4 <c fs>8 g | \mBreak
            \partial 2. <ds fs>4 b, b, \bar "||" | \partial 4 b | <d g b> b8( c') d'4 <d fs a d'> | <d g b> b8( c') d'4 <a ds'> | <g e'> b \once \stemUp c' b8 a | \mBreak 
            \once \stemUp b4 a8 g <e a>4 <ds g>8 fs | e4. fs8 g4. a8 | \stemUp b c' b a g4 e | <c e> e8 fs <b, g> fs e ds | \partial 2. <b, e>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
           s4 | s \stemUp <b, fs> s2 | s4 <a, e> s2 | s1 |
           s2. | s4 | s1*2 | s2 \stemDown e |  
           e2 s | s e | e2. s4 | s1 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Then | great Bill _ Brown came | swag -- ger -- ing down, I’ll | hold you a gui -- nea _ | 
        to a crown | That, let the black cock | have fair play, He’ll | drive the sod of the |
        bon -- ny _ gray, Sing -- ing | tol de rol de | rid -- dle lol de ra, Ri | tol lol de rid -- dle lol de | ra. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | <e, e>4 <ds, ds> <e, e> <d, d> | <c, c> <fs,, fs,> <b,, b,> <ds, ds> | <e, e> <d,! d!> <c, c> <a,, a,> |
            <b,, b,>4 b, b, | r4 | <g, g>4 g8 a b4 <d, d> | <g, g> g8 a b4 <fs, fs> | <e, e> r a g8 fs |
            g4 fs8 e fs4 b, | c2 c | g,( e4) <e, e> | <a, e>2 \once \stemUp e4 g8 fs | <e g>2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1*4 |
            s4 | s1*6 | s2 b, | s2. |
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