
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
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (or (= l3 l3) (= l2 Nil) (= l1 l2)) )
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l2 l3) (is-Cons Nil) (= l0 l1)) )
(assert (or (= l2 Nil) (= l2 Nil)) )
(assert (and (= l0 l3) (= l0 l3) (= l1 Nil) (= l1 l2)) )
(check-sat)
