\version "2.24"
\language "english"

global = {
  \time 9/8
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
            \partial 8 a8 | b16\f cs' d'8 8 4( b'8 a') fs' d' | b4 e'8 8 fs' d' cs'4 a8 | b16 cs' d'8 8 4( b'8 a') fs' a' | \mBreak
            \partial 1 <d' d''>4 d'8 <gs d'>8 e' d' <a cs'>4 \bar "||" | \partial 8 a8 | <a a'>8 fs' a' <b b'> g' b' <a a'> fs' a' | <b e'>4 e'8 <b e'> fs' d' cs'4 a8 | \mBreak
            <a a'>8 fs' a' <b b'> g' b' <d' a'> b' cs'' | \partial 1 <d' d''>4 \autoBeamOff d'8 <gs d'>8[ e' d'] <a cs'>4 \bar "||" \autoBeamOn | \partial 8 a8 | <fs' d''> e'' d'' <g' cs''>4 b'8 a' fs' d' | \mBreak
            e'4 8 <b e'> fs' d' cs'4 a8 | <fs' d''> e'' d'' <es' cs''>4 b'8 <fs' a'> b' cs'' | \partial 1 <fs' d''>4 \autoBeamOff d'8 <gs d'>8[ e' d'] <a cs'>4 \bar "||" | \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r8 | \grace { d,16^( } d4.)  <g b(>4. <fs d')> | <g, e>4. <gs, e> <a, e>4 d8\rest | \grace { d,^( } d4.) <g b>4.( <fs d'>4.) | 
            \stemNeutral b,4. e a,4 | d8\rest | <d fs>4. <g, g> <d fs> | g gs a4 d8\rest | 
            <d fs>4. <g, g> <d fs> | <b, fs> e <a, e>4 | d8\rest | <d, d>4. <e, e> <fs, fs> |
            <g, g>4. <gs, gs> <a, a> | <b, b> <cs cs'> <fs fs'> <d d'> <e e'> <a, a>4 | 
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | d2.~4. | s8*9 | d2.~4. |
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