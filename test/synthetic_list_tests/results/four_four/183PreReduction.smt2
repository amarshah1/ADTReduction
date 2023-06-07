
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Cons l3) (is-Nil l1)) )
(assert (not (= l0 l3)) )
(assert (or (= l0 l1) (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
