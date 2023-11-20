\version "2.24"
\language "english"

global = {
  \time 3/4
  \key ef \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \new 	Voice = "one" 	\fixed c' {
            \global
            %\voiceOne
            \repeat volta 2 { \partial 4 <ef g>8( af) | <ef bf>4 <ef c'> <ef bf>8( af) | %
                              <ef g>4( <d f>) <ef bf>8 g | <ef af>( bf) <ef af c'>4 <d bf> | \partial 2 ef2 | } \mBreak 
            \repeat volta 2 { \textMark \markup { "2nd time, " \italic "Chorus" }
            \partial 4 <bf, ef>8( <d f>) | <ef g>4 <bf, f> <bf, bf> | <c af>8( g) <d f>4 <d c'> | %
            <ef bf> <ef g ef'>8([ d')] <ef a! c'>4 | <d bf>2 <ef g>8( af!) | \mBreak
            <ef bf>4 <ef c'> <ef bf>8( af) | <ef g>4 <d f> <ef bf>8( g) <ef af>( bf) <ef af c'>4 <d bf> | \partial 2 ef2 |} \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
            
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        A | vir -- gin most | pure, as the | pro -- phets do | tell, |
        To | be our Re -- deem -- er from | death, hell, and | sin, Which |
        A -- dam’s trans -- gres -- sion hath | wrapt us all | in. |
      }	% end lyrics verse one

      \new Lyrics \lyricsto "one" {	% verse two
        Hath | brought forth a | babe, as it | hath her be -- fell |
        Re -- joice and be | mer -- ry, set | sor -- row a -- side, Christ |
        Je -- sus, our | Sav -- iour, was | born at this | tide. |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            ef8 f | g4 af g8 f | bf2 g8 ef | c4 f, <bf, f> | <ef g>2 |
            g,8 bf, | ef4 d g | f bf af | g c f | bf,2 ef8( f) |
            g4 af g8 f | bf2 g8 f | c4 f, <bf, f> | <ef g>2 |
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