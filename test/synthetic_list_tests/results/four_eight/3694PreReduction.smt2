
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
(assert (and (= l3 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (or (is-Nil l3) (is-Cons Nil)) )
(assert (not (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l3) (= l2 l3) (= l1 l2)) )
(assert (or (= l3 Nil) (is-Nil Nil) (is-Nil l1) (is-Nil Nil)) )
(check-sat)
