\version "2.24"
\language "english"

global = {
  \time 4/4
  \key d \major
}

mBreak = { }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 4 d'8._( b16) | b8([ a)] \noBeam fs( d) <b, e>4 <as, cs fs> | <b, d b>2. b8._( cs'16) | d'4 4 cs'8([ e')] \noBeam d'( cs') | \mBreak
            b2. b8_( cs') | d'4 4 cs'8([ e')] \noBeam d'( cs') | <d b>4 <g b> fs d'8.\fermata_( b16) | b8->([ a)] \noBeam fs( d) e4 fs | \mBreak
            b2( d'4.) b8 | b8->_( a) fs_( d) e4 <cs fs> | \partial 2. d'4( b2) | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            <d fs>4 | e <a, d> s2 | s2. fs4 | <fs b> <g b>4 4 <e as> | 
            d2. fs4 | <fs b>4 4 <g b> <e as> | s4 d8 e fs4 <d fs> | e d cs cs |
            fs8 g fs e d4 g | e4 s2. | <d fs>2. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        I4 | sow’d4 the seeds of | love,2. It4 | was all in the | 
        spring,2. In4 | A4 -- pril, May, and | sun -- ny June, When | small birds they do | 
        sing,4. "."8 "."4 When4 | small4 birds they do | sing.2. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            b,4 | cs d g fs | b,2. d'8. cs'16 | b4 g e fs |
            b4 fs b, d'8 cs' | b4 b,8. d16 e4 fs | g8_\< a b cs' d'4\! b,\fermata | \stemUp cs4 a a as |
            b2. \stemNeutral 4 | cs' d' <g b> <fs as> | <b, b>2. | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
            s4 | s1*6 | s4 d a8 g fs e | 
            d8 e d cs \once \stemDown b,4 s | s1 | s2. |
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