\version "2.24.0"
\language "english"

\score { 
  <<
    \fixed c' {
      \key f \major
      \time 3/4
      f4. 8 4 | 4. 8 4 | \textMark "*" f'4 e' d' | c'4. bf8 a4 | d' c' bf | a4 f2 | \fine
    }

    \new Lyrics \lyricmode {	% verse one
      Row4. the8 boat,4 | Whitt4. -- ing8 -- ton,4 | thou4 wor -- thy | ci4. -- ti8 -- zen,4 | Lord Mayor of | Lon -- don.2 |
    }	% end lyrics verse one
    \new Lyrics \lyricmode { % verse two
      [Row4. the8 boat,4 | Nor4. -- man,8 row,4 | row to thy | le4. -- man,8 thon4 | Lord Mayor of | Lon -- don.]2 |
    } % end lyrics verse two
  >>
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