\version "2.24"
\language "english"

global = {
  \time 4/4
  \key f \major
}

mBreak = {}

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 8 c8 | f4 8. 16 4 8 8 | g4 <e c'>8 bf a8. g16 f8 8 | g4 8. 16 4 8 8 | \mBreak
            <fs c'>4 <f! d'>8 d' \stemUp e'8.([ d'16) c'8 8] | \stemNeutral <f c'>( a) f' e' d'( c') bf a | %
            g( a) bf d' c'8.([ bf16) <e a>8 g] | f4 8. 16 <f bf>8( a) g( f) | \mBreak 
            f( d) g f f( e) d c | f4 <d f> <c f>2 | a8 c' d' e' f' d' c' a | \partial 8*7 f4 <bf, d f> <a, c f>4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s1 | s2 \stemUp f4 s4 | s1 |
            s2 e4 s4 | s1 | s2 g4 s4 | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        O | Fortune, how str -- ange -- ly thy | gifts are a -- ward -- _ ed, How | much to thy shame thy "ca -" |
        "- price" is re -- cord -- ed; The | wise, great and good of thy | frowns sel -- dom ’scape a -- ny, Brave Beli -- _ sa -- rius |
        begg’d for a ha’ -- pen -- ny. | [Bow, wow, wow, | Fol de rol de rid -- dle lid -- dle, | bow, wow, wow.] |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <f a>1 | \once \stemUp c'2 <f c'> | <e c'>1 |
            <a c'>4 <g b!> <c c'>2 | \stemUp a4. c'8 f' e' d' c' | d'2 s | d d8 c bf, a, |
            bf,4 g g bf | a bf a2 | f8 a bf c' d' bf a c' | s4 bf, f,4. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s1 | e4 c s2 | s1 |  
            s1 | f1 | bf4 g e c  | s1 |
            s4 bf, c c | f, bf, f2 | f1 | <f a>4 s4 s4. |
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