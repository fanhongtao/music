\version "2.18.2"

%%%%%%%
% Define a makeup command to draw full PIANO keys.
%
% Example
%   \markup { \fullkeys #'2 #'10 #'1.3 #7 }
%
% see http://lsr.di.unimi.it/LSR/Item?id=791

#(define (make-keys-white l1 width off height)
   (if (null? l1) 
       empty-stencil
       (ly:stencil-add 
          (ly:stencil-translate
            (make-line-stencil 0.1 0 0 0 height) 
            (cons (- (* (car l1) width)  width)  off))
          (make-keys-white (cdr l1) width off height))))

#(define (make-keys-black l1 width-white width-black off height-black)
   (if (null? l1) 
       empty-stencil
       (ly:stencil-add 
          (ly:stencil-translate
            (ly:round-filled-box `(0 . ,width-black) `(0 . ,height-black) 0) 
            (cons (- (* (car l1) width-white) (/ width-black 2)) off))
          (make-keys-black (cdr l1) width-white width-black off height-black))))


#(define-markup-command (fullkeys layout props width-white height-white width-black height-black) (number? number? number? number?) 
    (ly:stencil-add
      (make-line-stencil 0.1 0 0 (* 52 width-white) 0)
      (make-line-stencil 0.1 0 height-white (* 52 width-white) height-white)
      (make-keys-white '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53)  width-white   0 height-white)
      (make-keys-black '(1   3 4   6 7 8   10 11    13 14 15    17 18    20 21 22    24 25    27 28 29    31 32    34 35 36    38 39    41 42 43    45 46    48 49 50)  width-white  width-black  (- height-white height-black) height-black)))


% \markup { \fullkeys #'2 #'10 #'1.3 #7 }