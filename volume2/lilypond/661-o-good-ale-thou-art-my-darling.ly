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
            \partial 4 b,4 | e e8( fs) <e g>4 fs8( e) | <e a>4 4 4 g8 fs | e4 8( fs) <e g>4 fs8 e | \partial 2. <ds b>4 4 4 \bar "||" | \mBreak
            \partial 4 b4 | <d! b> b8( c') d'4 <d fs a d'> | <d g b> b8( c') d'4 <a ds'> | <g e'> b  \stemUp c' b8 a | b4 a8( g) a4 g8 fs | \mBreak
            e4. fs8 g4. a8 | b( c') b( a) <e g>4 e | \stemNeutral  e'4. b8 <e a c'>4 <g b>8 <fs a> | <e g>4 <ds fs> <e g> e | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*4 | 
            s4 | s1*2 | s2 e2 | e e |
            s1 | \once \stemUp ds4 s2. | <e b>4 s2. | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The | land -- lord, he looks | ve -- ry big With his | high cock’d hat and his | pow -- der’d wig; |
        Me -- thinks he looks both | fair  and fat, But | he may thank you and me for that, For ’tis |
        O, good ale, thou | art my dar -- ling | And my joy both _ | night and mor -- ning. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d4\rest | g4 s2. | <c, c>4 s2. | g4 s2. | <b,, b,>4 s2 |
            d4\rest | <g,, g,> s2 <d, d>4 | <g, g> s2 <fs, fs>4 | <e, e> d\rest s2 | s1 |
            s1 | b,2 c4 c | <g, e>2 <a, e> | <e, e>4 <b, fs> e <e, e> | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | <e, e>4 d\rest <e b> d\rest | s <c a>4 4 d\rest | <e, e> d\rest <e b> d\rest | s <b, fs b>4 4 |
            s4 | s g8 a b4 s | s g8 a b4 s | s2 a4 g8 fs | g4 fs8 e c'4 b8 a |
            g2 e | s1*3 |
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