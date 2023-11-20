\version "2.24"
\language "english"

global = {
  \time 6/8
  \key ef \major
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
            \partial 8 <g ef'>8 | bf8( g) <c af> <d f>4 ef8 | f( g) af bf,4. | <af, c>8 ef4 <bf, g>8 bf4 | \mBreak
            \stemUp c'8( d') <af ef'> <ef d'>4 <g ef'>8 | bf g <c af> <d f>4 ef8 | f( g) af bf,4. | c8( d) ef g( af) <ef bf> | <d f>4 ef8 4. \bar "||" | \mBreak
            \stemDown <g ef'>8( f') g' <a! c'>( d') ef' | <bf f'>( d') <g ef'> <f c'>4 \stemUp <d bf>8 | %
            <ef g>8( a!) bf \stemDown <g c'>( d') ef' | \stemUp <ef a! c'>4  <d bf>8 4. | \mBreak
            <ef bf>8 af16 g( f) ef g8 c'4 | d8 bf,4 d8 f4 | g8( af) bf \stemDown <ef c'>8( d') <ef ef'> | \stemUp <d f>4 ef8 4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | s2. | c4 s2 | s2. | 
            ef4 s2 | s2. | c4 s2 | af,4 s8 bf,4 s8 | s2. |
            s2.*4 |
            s2.*2 | ef4 s2 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        I | of -- ten for my | Jen -- ny strove, | Ey’d her, tried her, |
        yet ca’nt prove So | luck -- y to find her | pi -- ty move, | Ize have no re -- ward for love. |
        If thou wouldst but | think on me, And | now for -- sake thy | cru -- el -- ty, |
        I for -- ever _ could be, | should be, would be | Join’d to none, but | on -- ly thee. | 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            ef,8~ | 4 af,8 bf,4 c8 | af,4 f,8 d4. | ef4. ef |
            af,4 c8 bf,4 ef,8~ | 4 af,8 bf,4 c8 | af,4 f,8 d4. | ef4. 4 g,8 | \stemUp af4 g8 4. |
            \stemNeutral c4 ef8 f4. | d4 c8 a,!4 bf,8 | ef4. ef, | f,4 bf,8 4 af,8 |
            <g, ef>4. <ef, ef> | <bf, f>4. 4. | <ef, ef> <af, ef>4 <g, ef>8 | <bf, af>4 <ef g>8 4. |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*7 | bf,4 ef8 4. |
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