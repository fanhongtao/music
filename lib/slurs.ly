\version "2.18.2"

%%
% Define music function:
%  shapeSlur  -- to draw a slur with a list of offsets (in staff spaces) to the default coordinates.
% usage: 
%  \shapeSlur #'(x1 y1 x2 y2 x3 y3 x4 y4)
% 
% see http://lsr.di.unimi.it/LSR/Item?id=777

#(define ((alter-curve offsets) grob)
   ;; get default control-points
   (let ((coords (ly:slur::calc-control-points grob)))
     ;; add offsets to default coordinates
     (define (add-offsets coords offsets)
       (if (null? coords)
       '()
       (cons
         (cons (+ (caar coords) (car offsets))
               (+ (cdar coords) (cadr offsets)))
         (add-offsets (cdr coords) (cddr offsets)))))

     (if (null? offsets)
         coords
         (add-offsets coords offsets))))


#(define ((shape-slur offsets) grob)
   (let* (
          ;; have we been split?
          (orig (ly:grob-original grob))
          ;; if yes, get the split pieces (our siblings)
          (siblings (if (ly:grob? orig)
                        (ly:spanner-broken-into orig) '() ))
          (total-found (length siblings)))
     (if (>= total-found 2)
         ;; shape BROKEN
         ;; walk through siblings, find index in list
         ;; and apply offsets from list of offsets:
         (let loop ((n 0))
                   (if (eq? (list-ref siblings n) grob)
                       ;; return altered:
                       ((alter-curve (list-ref offsets n)) grob)
                       (if (< n total-found)
                           (loop (1+ n))
                           ;; end of list -- none found?!
                           ;; return defaults:
                           ((alter-curve '()) grob))))
         ;;
         ;; shape UNBROKEN
         ((alter-curve offsets) grob))))

shapeSlur = #(define-music-function (parser location offsets) (list?)
  #{
    \once \override Slur.control-points = #(shape-slur offsets)
  #})
