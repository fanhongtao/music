\version "2.18.2"

%% \guide #'(0 . shift) #'Ypoint2 note\startTextSpan note\stopTextSpan
%% see http://lsr.di.unimi.it/LSR/Item?id=662
squareBracket = #(define-music-function (parser location shift pad) (pair? number?) #{
  \once \override TextSpanner.extra-offset = #shift 
  \once \override TextSpanner.bound-details.right.Y = #pad
  
  \once \override TextSpanner.bound-details.left.text  = \markup { \draw-line #'(0 . -1) }
  \once \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
  
  \once \override TextSpanner.bound-details.left.padding = #'0.0
  \once \override TextSpanner.bound-details.right.padding = #-1
#})

squareBracketDown = #(define-music-function (parser location shift pad) (pair? number?) #{
  \once \override TextSpanner.extra-offset = #shift 
  \once \override TextSpanner.bound-details.right.Y = #pad
  
  \once \override TextSpanner.bound-details.left.text  = \markup { \draw-line #'(0 . 1) }
  \once \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . 1) }
  
  \once \override TextSpanner.bound-details.left.padding = #'-0.5
  \once \override TextSpanner.bound-details.right.padding = #-1
#})
