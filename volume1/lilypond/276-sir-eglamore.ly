\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }
chorus = ^\markup {\caps "Chorus."}
solo =  ^\markup {\caps "Solo."}

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Gracefully."}
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
            \partial 8 g8 | <b, g>4 g8 e8.( fs16) g8 | <a, a>4 fs8 d4. | <d g b>\chorus <c g c'> | \partial 8*5 <g d'>4 b8 g4 \bar "||" | \mBreak
            \partial 8 g8\solo | <b, g>4 g8 e8.( fs16) g8 | <a, a>4 fs8 d4. | <d g b>\chorus <c g c'> | \partial 8*5 <g d'>4 b8 g4 \bar "||" | \mBreak
            \partial 8 g8\solo | <g b>4 <a c'>8 <b d'>4 <g b>8 | s4. <a c'>4 <g b>8 | <fs a>4 <e g>8 <d fs>4 <cs e>8 | <d a>4 g8 fs4( e8) | \mBreak
            d4.\chorus <d g> | <a, fs> e8. fs16 e8 | <b, d>4 g8 g8. a16 <c fs>8 | \partial 8*5 <b, g>4.~ <b, g>4 \fine |


          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. c4 s8 | s2.*2 | s8*5 |
            s8 | s4. c4 s8 | s2.*2 | s8*5 |
            s8 | s2. | <c' e'>4 <b d'>8 s4. | s2.*2 |
            s2. | s4. c4 s8 | s4. c4 s8 | s8*5 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Sir8 Eg4 -- la8 -- more,4 that8 | va4 -- liant8 knight4. | Fa, la, | lanky4 down8 dilly.4 |
        He 8 | took4 his8 sword,4 and8 | went4 to8 fight,4. | Fa, la, | lanky4 down8 dilly.4 |
        And8 | as4 he8 rode4 o’er8 | hill4 and8 dale,4 All8 | arm’d4 up8 -- on4 his8 | shirt4 of8 mail,4. |
        Fa4. la | la, fa8. la16 la,8 | Fa4 la,8 lan8. -- ky16 down8 | 4 dilly.8 4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | g,4. c | fs,2. | g,4. e | b,4.~ b,4 |
            r8 | g,4. c | fs,2. | g,4. e | b,4.~ b,4 |
            r8 | <g, g>2.~ | <g, g> | <d a>4.~ <d a>4 <g a>8 | <fs a>4. <d a c'!> |
            <g b>4. b, | d fs | g e4 d8 | g,4.~ g,4 | \fine

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
