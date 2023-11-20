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
             b,4-! <g, d>4-! 4 <d b>-! | <d a>-! <d fs>-! <d a>8( fs) e( d) | <d d'>4-! d-! d-! <d fs>-! | <d fs>8( g16 a) <e g>8( <d fs>) <cs e>2 | \mBreak
             <d g>4-! <d b>-! <d b>-! <d d'>-! | d8( e) <a, fs>( e) d4-! a,-! | b,-! <b, b>-! \once \stemUp b a8( fs) | <cs e>4 <cs a> <cs a>2 | \mBreak
             <fs d'>8( e') <fs fs'>( e') <fs d'>4. <fs cs'>8 | <g b>4. <d a>8 <d fs>4 <d a> | \stemUp b8( a4) b8 b( d'4) b8 | <d a>( fs) e( d) <cs a>2 | \mBreak
             \stemNeutral <d b>4-! <g d'>-! <a d'>4.-> <a fs'>8 | <b g'>8( fs') <b e'>( d')  <a e'>4 e | <d fs> <d a> <d b>4. a8 | \stemUp b8( d')  d4 2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*6 | s2 d2 | s1 |
            s1*2 | d2 d | s1 |
            s1*3 | \stemUp d4 s2. |
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricsto "one" {	% singer
        \markup { \italic "Jockey." } _ _ _ _ _ _ _ \markup { \italic "Jenny." } _ _ _ _ _ _ 
        \markup { \italic "Jockey." } _ _ _ _ _ _ _  _ _ _ _ _ _ _
        \markup { \italic "Jenny." }
      }	% end singer
      
      \new Lyrics \lyricsto "one" {	% verse one
        Fair -- est Jen -- ny, | thou mun love me. | Troth, my bon -- ny | lad, I do |
        Gin thou sayst thou | dost ap -- prove me, | Dear -- est thou mun | kiss me too. |
        Take a kiss or | twa, dear Jock -- ey, | But I dare give | nean, I trow; |
        Fie, nay, pish, be | not un -- luc -- ky | Wed me first, and | aw will do. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g,4-! cs-! cs-! g,-! | fs,-! d,-! fs,2-> | b,4-! b,-! b,-! b,-! | a, a,4 2 |
            cs4-! g,-! g,-! cs-! | fs,-! d,-! fs,-! fs,-! | g,-! g,-! g,( fs,8 d,) | a,4-! a,4-! a,2-> | 
            b8 cs' d' cs' b4. a8 | g4. fs8 d4 fs | g8 fs4 g8 g b4 g8 | fs d cs b, a,2 |  
            g,4 b, fs,4. d8 | g,4-! g-! cs2-> | d4-! fs-! g4.-! fs8 | g4 <d fs a>4 2 | \fine
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