\version "2.24"
\language "english"

global = {
  \time 4/4
  \key d \major
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
            <d fs>4 fs8. 16 4 <cs e> | <d fs> e d2 | 4 d' <g cs'>2 | \stemUp b4 4 <d a>2 | \mBreak
            <d fs>4 fs8. 16 4 e | fs e d fs8( g) | <e a!>4 g fs g | <cs a> g <d fs> g | <e a> g fs g | \mBreak 
            <cs a>2( <d fs>4) r4 | d^\f d' <e as cs'>2 | <d b>4 b a4. 8 | <b, g>4^\dim fs  e  <ds fs> | <e g>\p <cs a> <d fs> d | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*2 | d2 s | cs s |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Sweet, if you love me, | let me go, | let me go, | let me go! |
        Sweet, if you love me, | let me go! What | ’tis you mean I | do not know, But | fear you are "re -" |
        "- solv’d to- " | Let me go, | let me go!  Re -- solv’d to force a | maid to mar -- ry. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            a1 | 4 s2. | s1*2 |
            s1*2 | a1 | a | a | 
            s1*2 | s2 <ds, ds> | <e, e>2. b,4 | e_( a, d2) | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            d2. a,4 | d,1 | fs2 e | g fs | 
            b2. <g b>4 | <fs as>2 <b, b> | cs d | a, d | cs d |
            <a, a>^( <d a>4) d4\rest | <b, b>2 <fs, fs> | <g, g> s | s1*2 |
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