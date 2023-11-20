\version "2.24"
\language "english"

global = {
  \time 4/4
  \key e \major
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
            \partial 4 <e e'>4( | <e b>) <e gs>4 <ds fs>8([ gs fs8.) e16] | e2 b, | cs4 e <b, e>8([ fs) gs8.( e16)] | <ds fs>2. <e e'>4 | \mBreak
            <e b>4 <e gs> <ds fs>8([ gs fs8.) e16] | e8( fs) gs( e)  b,4. 8 | %
            cs( ds) e4 <cs fs> <bs, ds gs>4 | \partial 2. <cs e cs'>2. \bar "||" | \partial 4 gs4 \mBreak
            a4. b8 cs'([ b cs'8.) d'!16] | 2 cs'8( ds') e'( cs') | b( cs') b( gs) fs( gs) fs( e) | <ds fs>2. <e e'>4 | \mBreak
            <e b>4 <e gs>4 <ds fs>8([ gs) fs8.( e16)] | e2 b,4 4 | cs8( ds) <a, e>4 gs4^( \once \stemUp b) | \partial 2. <e gs e'>2.\fermata | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*8 |
            s4 | s1*6 | s2 \stemUp <b, e>4( <ds fs>) |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
         In_Ja -- nu -- a -- ry | last, On | Mun -- non -- day at | morn, As
         I a -- "long . . " the | fields did pass To | view the win -- ter’s corn; | I |
         leak -- ed "me . . " be -- hind, And I saw come o’er the knough, Yan |
         glent -- ing in an | a -- pron, With | bon -- ny brent | brow. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <cs a>4( | <e gs>) <e b> <b, a>2 | <e gs>1 | <a, e a>2 <e gs> | b,4 b8. cs'16 b4 <cs a> |
            <e gs>4 <e b> <b, a>2 | <e gs>1 | <a, a>2 a4 gs | cs'2. | <e b d'!>4 |
            <a cs'>2 <a e'> | <fs d'!>4 <gs e'> <a e'> <cs a> | <e gs>2 <cs e as> | b,4 b8. cs'16 b4 <cs a!> |
            <e gs>4 <e b> <b, a>2 | <cs gs> <gs, e>4 4 | <a, e> cs b, b, | e,2. |
          } % end voice three

          \new 	Voice {
            %\voiceFour
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