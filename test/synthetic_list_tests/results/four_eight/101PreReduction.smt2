
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
(assert (and (= l3 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (= l3 Nil) )
(assert (and (= l1 l2) (is-Nil Nil) (= l0 l0)) )
(assert (= l1 Nil) )
(assert (and (= l1 Nil) (= l3 l1) (= l2 l2)) )
(assert (or (= l3 l2) (= l1 l2) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
