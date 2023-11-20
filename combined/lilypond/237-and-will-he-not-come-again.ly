\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key a \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Very slowly and ad libitum."}
                                %	arranger = ""
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 8 a8 | a8. b16 a8 e4 c'8 | <d c'>4.( <d b>4) a8 | <c a>8. b16 a8 <cs e>8.( fs16) g8 | <d g>4.( <d fs>4) e16( d16) | \mBreak
            cs8. d16 e8 f!4 a8 | gs8. a16 b8 e4 <d a d'>8 | s2. | \partial 8*5 <c a>4.~<c a>4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | c2. | s2.*3 |
            s2.*2 | <e a c'>8. d'16 e'8 <e gs d'>8.( c'16) <d gs b>8 | s4. s4 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        And8 will8. he16 not8 come4 a8 | 8 gain,2 And8 | will8. he16 not8 come4 a8 -- 8 gain?2  16 No,16 |
        no,8. he16 is8 dead,4 Gone8 | to8. his16 death8 -- bed,4 He8 | ne8. -- ver16 will8 come4 a8 -- 8 gain.2 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | <a, e>2. | <gs, e>4.~<gs, e>4 r8 | <a, e>4. <a, a> | <d a>4.~<d a>4 r8 |
            <e g>4. <d f! a> | <d e b> <c e a>4 f8 | e4. e | a( a4) | \fine

          } % end voice three
          \new Voice { % voice four

          } % end voice four
		>>
      } % end staff down
	>>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
                                %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score
