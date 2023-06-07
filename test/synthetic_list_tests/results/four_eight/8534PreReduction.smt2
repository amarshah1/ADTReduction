
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
(assert (not (= l2 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l3 l0)) )
(assert (not (= l2 l0)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (is-Nil l2) (= l0 l2) (= l2 Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
