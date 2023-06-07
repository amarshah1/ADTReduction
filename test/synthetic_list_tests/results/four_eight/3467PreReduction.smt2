
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
(assert (is-Nil l3) )
(assert (= l0 l3) )
(assert (and (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (and (= l2 l2) (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
