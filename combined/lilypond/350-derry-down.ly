\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key e \minor
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time."}
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
            \partial 8 b8 | b_( c') b a g fs | g fs e ds4 ds8 | e8. fs16 e8 g fs e |
            d8 e fs g4 a16 g | fs8 e d d8. e16 d8 | d8. e16 d8 <b d'>4 <a ds'>8 |
            <g e'>8 b b c'8. b16 a8 | b8. a16 g8 a8. g16 <ds fs>8 | e4. <e b> | \partial 8*5 a8. g16 <ds fs>8 e4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | e4. s4. | s2.*2 |
            s2.*3 |
            \stemUp s4. e4 s8 | e4 s8 e4 s8 | s2. | c4 s8 s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        An8 | an4 -- cient8 sto -- ry I'll | tell you a -- non,4 Of16 a | no8. -- ta16 -- ble8 prince that was |
        call8 -- ed King John;4 And16 he | rul’d8 o -- ver Eng8. -- land16 with8 | main8. and16 with8 might,4 For8 |
        he8 did great wrong,8. And16 main8 -- tain’d8. lit16 -- tle8 right,8. Der16 -- ry8 | down,4. down, | hey,8. der16 -- ry8 down.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2.*2 | s4. g |
            b8 c' a b4 a8\rest | s2. | s4. g,4 fs,8 |
            e,4. s4. | s s4 b,8 | c4. g, | a,4 b,8 s4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            d8\rest | g4. <ds b> | <e b> <b, b> | <c g> e8 d c |
            d4. g,4 b,8\rest | <d a>4. <c fs> | <b, g> s |
            s4. a | g fs4 s8 | s2. | s4. e4 |
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
                                %\override LyricText.self-alignment-X = #LEFT
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score
