\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic "Gracefully."}
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
            \partial 4 d4 | g4 g8._( fs16) e4 c'8. b16 | a8._( g16) fs8. a16 d4 d4 | g4 g8. fs16 e4 c'8. b16 | a2. d4 | \mBreak
            g8._(  a16) b8._( c'16)  d'4 c'8_( b8) | c'4 b8 a8 b4 g8 a8 | b4 g8. g16 d4 fs4 | \partial 2. <b, g>2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s4 b,4 c4 c4 | d4 s2 a,4 | d4 s4 c4 c4 | d4 s2. |
            s4 g4 a4 fs4 | g4 d4 d4 d8 fs8 | g4 d4 b,4 a,4 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        As4 it4 fell4 out4 on8. a16 | high4 holiday,2 As4 |  many4 there4 be4 in8. the16 | year,2. When4 |
        young4 men8. and16 maids4 to4 --  | ge4 -- ther8 do8 go,4 Their4 | mass4 -- es8. and16 matins4 to4 | hear2. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s1 | s2. fs4 | g4 s2. | s4 a,4 d,4 s4 |
            s1 | s2. b,8 a,8 | g,4 b,4 d4 d,4 | g,2^(
            \once\override Stem.direction = #down
            g4) \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            r4 | r4 <g, g>4 <c g>4 <a, a>4 | <d fs>4 r4 r4 d8. c16 | b,4 r4 <c g>4 <a, a>4 | <d fs>4 s4 s4 r4 |
            r4 g4 fs4 d4 | e4 fs4 g4 s4 | s1 | s2. |
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
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score