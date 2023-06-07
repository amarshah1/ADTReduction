
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
(assert (= l1 l2) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l1 l0)) )
(assert (is-Nil l1) )
(assert (or (is-Cons Nil) (is-Cons l3) (= l3 l2)) )
(check-sat)
