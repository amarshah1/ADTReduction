
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
(assert (and (= l3 l3) (= l0 l1) (= l0 l1)) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l3 l0)) )
(assert (= l3 Nil) )
(assert (and (is-Nil l3) (= l0 l2) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
