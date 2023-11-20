\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

 % meter = \markup {\italic "Gracefully."}
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
\partial 8 <b, g>8 | a4 b8 c'8_( b8) a8 | b4 g8 d'4 b8 | <d fs a>4 fs8 d4 d8 | e4 fs8 <b, g>4 <b, g>8 | \mBreak
            a4 b8 c'8 b8 a8 | b4 g8 d'4 b8 | <d fs a>4 fs8 d4 d8 | \partial 8*5 e4 fs8 g4 \bar "||" | \mBreak
            \partial 8 <d b>8 | <d a>8 fs4 d4 <fs e'>8 | <g d'>8 b4 g4 <d b>8 | <d a>8 fs4 d4 d8 | e4 fs8 <b, g>4 <d b>8 | \mBreak
            <d a>8 fs4 d4 <fs e'>8 | <g d'>8 b4 g4 <d b>8 | <d a>8 fs4 d4 d8 | \partial 8*5 e4 fs8 g4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
s8 | <d fs>2. | <d g>4. <d g>4. | s2. | c4. s4. |
            <d fs>2. | <d g>4. <d g>4. | s2. | c4. b,4 |
            s8 | s2.*3 | c4. s4. |
            s2.*3 | c4. s4 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
8 Out,4 a8 -- las!4 what8 | grief4 is8 this,4 That8 princes’4. subjects4 can8 -- not4 be8 true;4 But8 |
still4 the8 Devil4 hath8 | some4 of8 his4 Will8 | play4 their8 parts4 what8 -- e’er4 en8 -- sue.4 |
For8 -- get8 -- ting4 what4 a8 | grievious4. thing4 It8 | is8 to4 of-fend4 th’a8 -- nointed4. king.4 A8 |
-las!8 for4 woe,4 why8 | should8 it8 be8 so?4 This8 | makes8 a4 sor4 -- row8  -- ful4 heigh8 ho!4 |
      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
g,8 | d2. | g4. b,4. | d2. | d4. g,4 g,8 |
d2. | g4. b,4. | d2. | d4. g,4 |
g8 | fs4.~ fs4 c'8 | b4.~ b4 g8 | fs4.~ fs4 d8 | d4. g,4 g8 |
fs4.~ fs4 c'8 | b4.~ b4 g8 | fs4.~ fs4 d8 | d4. g,4 | \fine
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
