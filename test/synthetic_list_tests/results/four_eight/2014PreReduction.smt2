
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
(assert (or (is-Nil Nil) (= l0 Nil) (is-Cons l2)) )
(assert (= l3 l1) )
(assert (not (= l1 l1)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil l2) )
(check-sat)
