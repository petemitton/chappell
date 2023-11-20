\version "2.24"
\language "english"

global = {
  \time 6/8
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
            \voiceOne
            \partial 8 d8 | g8. a16 g8 <g b>4 c'8 | <g d'>4.~4 <g e'>8 | d'8. c'16 <g b>8 <fs a>_( b) g | \mBreak
            e4.~4 d8 | g8. fs16 e8 <d a>4 a8 | b8. a16 g8 <fs c'>4 <g b>8 | <e a>8 b <d g> g4 fs8 | \mBreak
            \partial 8*5 <b, g>4.~4 \bar "||" | \partial 8 d8 | g8. a16 g8 <c e g>4 g8 | a8. b16 a8 <d fs a>4 a8 | \mBreak
            b_( cs') <d a d'> d'4 cs'8 | <fs d'>4.~4 8 | d'_( c') b a_( b) <fs c'> | <g b>_( d') <d g> <c e>4 d8 | \mBreak
            g8. fs16 e8 <d a>4 a8 | b8._( a16) g8 <fs c'>4 <g b>8 | <e a> b <d g> g4 fs8 | \partial 8*5 <b, g>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | \stemUp b,4 s2 | s2. | a4 s2 |
            s2.*2 | b,4 s2 | s4. \once \stemDown c |
            s8*5 | s8 | <b, d>4 s2 | <cs e>4 s2 | 
            <d g>4 s8 \once \stemDown <e g>4. | s2. | g4 s8 s4. |s2. |
            s2. | b,4 s8 s4. | s4. \once \stemDown c4. | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Sweet | Nel -- ly, my heart’s de -- light, Be | lov -- ing and do not |
        slight The | prof -- fer I make, For | mo -- des -- ty’s sake; I | ho -- nour your beau -- ty |
        bright. | For | love I pro -- fess, I | can do no less, Thou |
        hast my fa -- vour | won: And | since I see your mo -- des -- ty, I |
        pray you a -- gree And | fan -- cy me, Tho’ I’m but a far -- mer’s | son. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | g4. e | b,4.~4 c8 | fs,4 g,8 d,4 e,8 |
            <c, g>4.~4 \stemUp fs8 | g4. \stemNeutral fs | g a4 b8 | c'4 b8 a4 d8 |
            g4.~4 | r8 | g,4. c | a, d4 c8 | 
            g4 fs8 e4 a8 | d4.~4 c'!8 | b a g fs4 d8 | g4 b,8 c4 \stemUp fs8 | 
            g4. \stemNeutral fs | g a4 b8 | c'4 b8 a4 d8 | g4.~4 | \fine
          } % end voice three

          \new 	Voice {
            %voiceFour
            s8 | s2.*3 |
            s4. s4 d8 | e4. s4. | s2.*2 |
            s8*5 | s8 | s2.*2 |
            s2.*3 | s4. s4 d8 | 
            e4. s | s2.*2 | s8*5 |
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