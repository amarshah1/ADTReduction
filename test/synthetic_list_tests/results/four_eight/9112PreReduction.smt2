
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
(assert (= l0 l3) )
(assert (or (= l3 Nil) (= l3 Nil) (is-Nil l0) (= l0 Nil)) )
(assert (= l1 l2) )
(assert (and (= l3 Nil) (is-Cons Nil) (is-Nil l1) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 l1) (= l3 l3) (= l2 Nil)) )
(assert (or (= l1 l3) (= l0 l3) (= l2 Nil) (= l1 Nil)) )
(check-sat)