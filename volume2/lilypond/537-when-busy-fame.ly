\version "2.24"
\language "english"

global = {
  \time 4/4
  \key c \major
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
            \partial 8 g8 | e4. 8 <b, d>4 g | c4. d8 e4 <c g c'> | a4. g8 a8( b) c'4 | \mBreak
            <c e>2. a8( b) | <c g>4. e8 d( e) d( c) | d4 f8( g) a4 <d gs b> | <c a c'> b8( a) a4. g8 | \partial 2. <b, g>2. \bar "||" | \mBreak
            \partial 4 b8( c') | d'4. e'8 d'( b) a( g) | c'4 <f b d'> <e c' e'> <d gs> | \stemUp <c e a> <d f b> b4. a8 |  <c a>2. c'16( d' e'8) | \mBreak
            <c a>4 g8( e) g4 a8( g) | <c a>4 a16( b c'8) <d b>4 <b, a>8( <c g>) | <c a>4 g8( e) <b, d>4. c8 | \partial 2. c2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | c4 s2. | s1 | <c f>4 s4 <c f>4 s4 |
            s2. c4 | s1*2 | s2 <c fs>4 s4 | s2. | 
            s4 | s1*2 | s2 <d gs>4 s | s2. c4 |
            s2. c4 | s4 d4 s2 | s1 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        When | bu -- sy Fame o’er | all the plain, Ve | lind -- da’s prais -- es |
        rung, And | on their oat -- en | pipes each swain Her | match -- less beau -- ty sung; |
        The | En -- vious nymphs were | forc’d to yield, She | had the sweet -- est | face: "No . . " | 
        em -- u -- lous dis -- putes were held But | for the se -- cond | place. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <c g>2 <g, f> | <a, e>2. e,4 | f,2 2 |
            c4. g,8 c,4 f | e4. <c g>8 2 | <f a>2. e4 | a2 d | g( g,4) |
            r4 | <g b>2 <f g b> | <e g c'>4 d c b, | a, d e2 | a2( a,4) f |
            f4 e8 c e4 f8 e | f4 fs g f!8 e | f4 e8 c <g, f>2 | <c e>2. | \fine
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