\version "2.24"
\language "english"

global = {
  \time 4/4
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
            %\voiceOne
            \repeat volta 2 { \partial 4 b4 | <g b>8 e e fs g4 fs8 g | a g fs g a4 g8 fs | \mBreak
            e4 <e b>4 4-> a8 <e c'> | \partial 2. <g b> <fs a> <e g> <ds fs> e4 } | \partial 4 <g b> | 8 <fs a> <g b> <a c'> <b d'>4 <a c'>8( <g b>) | \mBreak
            <fs a> <e g> <d fs> <e g> <fs a>4 <e g>8( <fs a>) | <ds b> e e e  <ds b> e e e | <e a> g <e fs> g <e a>4 <ds g>8 fs | \mBreak
            e4 <g b> <e b>-> a8 <e c'> | <g b> <fs a> <e g> <ds fs> <e a>4 g8 fs | e4 <e b> \once \stemUp b4. a8 | \partial 2. <g b> <fs a> <e g> <ds fs> e4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*4 | s4 | s1*6 | s2 e2-> | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The_I -- ta -- lian nymphs and swains That a -- dorn the op -- era stage, With their |
        fal lal la, Fa la | la la la la la. | 
      }	% end lyrics verse one

      \new Lyrics \lyricsto "one" {	% verse two
        How_do | die up -- on their strains, They so | sweet -- ly do en -- gage, With their |
        fal lal la, Fa la | la la la la la. | Their | ha ha ha ha ha, With- |
        -out a grain of sense, Has | mol -- li -- fied our brains, _ And we’re | fobb'd out of our pence By their |  
        lal lal la, Fa la | la la la la la, By their | fal lal la, la | la la la la la. |
      }	% end lyrics verse two
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | e, g8 a <e b>4 a8 b | <e c'>8 b a b <e c'>4 b8 a |
            <e g>4 g, c4. a,8 | b,4 b, e | r | g, g, g, c |
            d4 d d r | g,2 g, | c8 b, a, b, c4 b,8 a, |
            g,4 e, c4. a,8 | b,4 <b, b> <e c'> b8 a | <e g>4 g, c2 | b,4 b, e | \fine
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