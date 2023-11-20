\version "2.24"
\language "english"

global = {
  \time 4/4
  \key f \major
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
            r2 r4 c' | <c a> f8 f8 4 4 | c4 8 8 g4 c' | <c a> f8 f8 4 4 | \mBreak
            \stemUp f8^( g) a f bf4. 8 | \stemNeutral <e! bf>4 c'8 bf <f a>4 bf8 a | <d g>4 a8 g e4. 8 | f4. 8 d4. e8 | \partial 8*7 e4. f8 <a, f>4. \bar "||" | \mBreak
            \partial 8 f'8 | <a c' f'>4 f <a c' f'> f | <a c' f'>8( e') d'( c')  <a c' f'>4 f | <a, f> g8 a <c e>4 f8( e) | \stemUp <bf, d>4 d bf4. 8 | \mBreak
            <e bf>4 c'8 bf <f a>4 bf8( a) | <d g>4 a8( f) e4. 8 | f4. 8 d4 e | \partial 8*7 e4. f8 <a, f>4.| \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*4 |
            \once \override NoteColumn.force-hshift = #-1.7 ef2 2 | s1*2 | \stemUp c4 s2. | bf,4 s4 s4. | 
            s8 | s1*3 | s2 d4 s4 | 
            s1*2 | c4 s2. | bf,4 s4 s4. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        A | shep -- herd _ sat him | un -- der a thorn, He | pull’d out his pipe, and_be- |
        -gan for to play, It | was on a Mid -- sum -- mer | day in the morn, For | ho -- nor of that | ho -- li -- day. |
        A | dit -- ty he did | chant a -- long, That | goes to the tune of | Cat Bor -- dee, And |
        this was the bur -- den | of his song, If | thou wilt pipe,_lad, I’ll | dance to thee. |
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {
        _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _ _ _ 
        To | thee, to thee, derry, | derry to thee, To | thee, to _ thee, derry, | derry to thee, And |
      }

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            <f, c>1-> | <f, c f>-> | <f, c e>-> | <f, c f>-> |
            f1 | g2 a | bf c' | a bf | g f4. |
            s8 | <f, c f>1 | 1 | <f, f> | 1 | 
            g2 a | bf c' | a bf | g f4. |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1*4 |
            f,1-> | f, | f, | f, | f,8*7 | 
            s8 | s1*4 |
            f,1 | 1 | 1 | f,2. s8 |
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